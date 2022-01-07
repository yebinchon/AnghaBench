; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debug.c_ath10k_debug_print_board_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debug.c_ath10k_debug_print_board_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.firmware* }
%struct.firmware = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"board_file api %d bmi_id %s crc32 %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_debug_print_board_info(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %7 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %13 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %12, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  br label %25

22:                                               ; preds = %1
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %24 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %23, i32 100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %11
  %26 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %27 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.firmware*, %struct.firmware** %28, align 8
  store %struct.firmware* %29, %struct.firmware** %4, align 8
  %30 = load %struct.firmware*, %struct.firmware** %4, align 8
  %31 = call i32 @IS_ERR_OR_NULL(%struct.firmware* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load %struct.firmware*, %struct.firmware** %4, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.firmware*, %struct.firmware** %4, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @crc32_le(i32 0, i32 %36, i32 %39)
  store i64 %40, i64* %5, align 8
  br label %42

41:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %42

42:                                               ; preds = %41, %33
  %43 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %44 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %45 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @ath10k_info(%struct.ath10k* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %46, i8* %47, i64 %48)
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.firmware*) #1

declare dso_local i64 @crc32_le(i32, i32, i32) #1

declare dso_local i32 @ath10k_info(%struct.ath10k*, i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
