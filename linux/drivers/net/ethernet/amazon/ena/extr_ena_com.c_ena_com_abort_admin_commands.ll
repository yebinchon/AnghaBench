; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_abort_admin_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_abort_admin_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue }
%struct.ena_com_admin_queue = type { i64, i32 }
%struct.ena_comp_ctx = type { i32, i32 }

@ENA_CMD_ABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_abort_admin_commands(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_com_admin_queue*, align 8
  %4 = alloca %struct.ena_comp_ctx*, align 8
  %5 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %6 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %7 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %6, i32 0, i32 0
  store %struct.ena_com_admin_queue* %7, %struct.ena_com_admin_queue** %3, align 8
  %8 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %41

13:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %38, %13
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %17 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue* %21, i64 %22, i32 0)
  store %struct.ena_comp_ctx* %23, %struct.ena_comp_ctx** %4, align 8
  %24 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %4, align 8
  %25 = icmp ne %struct.ena_comp_ctx* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %41

31:                                               ; preds = %20
  %32 = load i32, i32* @ENA_CMD_ABORTED, align 4
  %33 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %35, i32 0, i32 0
  %37 = call i32 @complete(i32* %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %14

41:                                               ; preds = %12, %30, %14
  ret void
}

declare dso_local %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
