; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }

@MCC_WRB_EMBEDDED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.be_mcc_wrb* (%struct.be_adapter*, %struct.be_mcc_wrb*)* @be_cmd_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.be_mcc_wrb* @be_cmd_copy(%struct.be_adapter* %0, %struct.be_mcc_wrb* %1) #0 {
  %3 = alloca %struct.be_mcc_wrb*, align 8
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_mcc_wrb* %1, %struct.be_mcc_wrb** %5, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %8 = call i64 @use_mcc(%struct.be_adapter* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %12 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %11)
  store %struct.be_mcc_wrb* %12, %struct.be_mcc_wrb** %6, align 8
  %13 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %14 = icmp ne %struct.be_mcc_wrb* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.be_mcc_wrb* null, %struct.be_mcc_wrb** %3, align 8
  br label %39

16:                                               ; preds = %10
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %19 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %18)
  store %struct.be_mcc_wrb* %19, %struct.be_mcc_wrb** %6, align 8
  br label %20

20:                                               ; preds = %17, %16
  %21 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %23 = call i32 @memcpy(%struct.be_mcc_wrb* %21, %struct.be_mcc_wrb* %22, i32 4)
  %24 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %25 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MCC_WRB_EMBEDDED_MASK, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %33 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %34 = call i64 @embedded_payload(%struct.be_mcc_wrb* %33)
  %35 = trunc i64 %34 to i32
  %36 = call i32 @fill_wrb_tags(%struct.be_mcc_wrb* %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %20
  %38 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  store %struct.be_mcc_wrb* %38, %struct.be_mcc_wrb** %3, align 8
  br label %39

39:                                               ; preds = %37, %15
  %40 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  ret %struct.be_mcc_wrb* %40
}

declare dso_local i64 @use_mcc(%struct.be_adapter*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(%struct.be_mcc_wrb*, %struct.be_mcc_wrb*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @fill_wrb_tags(%struct.be_mcc_wrb*, i32) #1

declare dso_local i64 @embedded_payload(%struct.be_mcc_wrb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
