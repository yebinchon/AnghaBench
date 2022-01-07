; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_cal_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_cal_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"invalid calibration data length in DT: %d\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to read calibration data from DT: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"failed to download calibration data from Device Tree: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*)* @ath10k_download_cal_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_download_cal_dt(%struct.ath10k* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %79

20:                                               ; preds = %2
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @of_get_property(%struct.device_node* %21, i8* %22, i32* %7)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %79

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ath10k_warn(%struct.ath10k* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EMSGSIZE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %77

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kmalloc(i32 %42, i32 %43)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %77

50:                                               ; preds = %41
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @of_property_read_u8_array(%struct.device_node* %51, i8* %52, i8* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ath10k_warn(%struct.ath10k* %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %74

62:                                               ; preds = %50
  %63 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ath10k_download_board_data(%struct.ath10k* %63, i8* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ath10k_warn(%struct.ath10k* %70, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %74

73:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %69, %58
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @kfree(i8* %75)
  br label %77

77:                                               ; preds = %74, %47, %35
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %25, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @of_property_read_u8_array(%struct.device_node*, i8*, i8*, i32) #1

declare dso_local i32 @ath10k_download_board_data(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
