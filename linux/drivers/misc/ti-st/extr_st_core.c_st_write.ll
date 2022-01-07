; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.st_data_s = type { i32* }

@.str = private unnamed_addr constant [38 x i8] c"data/tty unavailable to perform write\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%d to be written\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @st_write(%struct.sk_buff* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.st_data_s*, align 8
  %5 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = call i32 @st_kim_ref(%struct.st_data_s** %4, i32 0)
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp eq %struct.sk_buff* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %11 = icmp eq %struct.st_data_s* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %14 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br label %17

17:                                               ; preds = %12, %9, %1
  %18 = phi i1 [ true, %9 ], [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %2, align 8
  br label %40

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call i32 @st_int_enqueue(%struct.st_data_s* %34, %struct.sk_buff* %35)
  %37 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %38 = call i32 @st_tx_wakeup(%struct.st_data_s* %37)
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %26, %22
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i32 @st_kim_ref(%struct.st_data_s**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @st_int_enqueue(%struct.st_data_s*, %struct.sk_buff*) #1

declare dso_local i32 @st_tx_wakeup(%struct.st_data_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
