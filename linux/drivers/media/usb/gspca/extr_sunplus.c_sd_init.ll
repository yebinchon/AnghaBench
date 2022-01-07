; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sunplus.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sunplus.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Opening SPCA504 (PC-CAM 600)\0A\00", align 1
@LogitechClickSmart420 = common dso_local global i32 0, align 4
@spca504A_clicksmart420_open_data = common dso_local global i32 0, align 4
@spca504_pccam600_open_data = common dso_local global i32 0, align 4
@qtable_creative_pccam = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Opening SPCA504\0A\00", align 1
@AiptekMiniPenCam13 = common dso_local global i32 0, align 4
@qtable_spca504_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %73 [
    i32 131, label %9
    i32 129, label %22
    i32 128, label %27
    i32 130, label %42
  ]

9:                                                ; preds = %1
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = call i32 @reg_w_riv(%struct.gspca_dev* %10, i32 29, i32 0, i32 0)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @reg_w_riv(%struct.gspca_dev* %12, i32 0, i32 8966, i32 1)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @reg_w_riv(%struct.gspca_dev* %14, i32 0, i32 3332, i32 0)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = call i32 @reg_w_riv(%struct.gspca_dev* %16, i32 0, i32 8192, i32 0)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = call i32 @reg_w_riv(%struct.gspca_dev* %18, i32 0, i32 8961, i32 19)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @reg_w_riv(%struct.gspca_dev* %20, i32 0, i32 8966, i32 0)
  br label %22

22:                                               ; preds = %1, %9
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = call i32 @spca504B_PollingDataReady(%struct.gspca_dev* %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i32 @spca50x_GetFirmware(%struct.gspca_dev* %25)
  br label %107

27:                                               ; preds = %1
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = call i32 @spca50x_GetFirmware(%struct.gspca_dev* %28)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @reg_r(%struct.gspca_dev* %30, i32 0, i32 20482, i32 1)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @reg_w_1(%struct.gspca_dev* %32, i32 36, i32 0, i32 0, i32 0)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @reg_r(%struct.gspca_dev* %34, i32 36, i32 0, i32 1)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @spca504B_PollingDataReady(%struct.gspca_dev* %36)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @reg_w_riv(%struct.gspca_dev* %38, i32 52, i32 0, i32 0)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @spca504B_WaitCmdStatus(%struct.gspca_dev* %40)
  br label %107

42:                                               ; preds = %1
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = load i32, i32* @D_STREAM, align 4
  %45 = call i32 @gspca_dbg(%struct.gspca_dev* %43, i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = call i32 @reg_w_riv(%struct.gspca_dev* %46, i32 224, i32 0, i32 0)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = call i32 @reg_w_riv(%struct.gspca_dev* %48, i32 224, i32 0, i32 1)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = call i32 @spca504_wait_status(%struct.gspca_dev* %50)
  %52 = load %struct.sd*, %struct.sd** %3, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LogitechClickSmart420, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = load i32, i32* @spca504A_clicksmart420_open_data, align 4
  %60 = load i32, i32* @spca504A_clicksmart420_open_data, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = call i32 @write_vector(%struct.gspca_dev* %58, i32 %59, i32 %61)
  br label %69

63:                                               ; preds = %42
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = load i32, i32* @spca504_pccam600_open_data, align 4
  %66 = load i32, i32* @spca504_pccam600_open_data, align 4
  %67 = call i32 @ARRAY_SIZE(i32 %66)
  %68 = call i32 @write_vector(%struct.gspca_dev* %64, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = load i32, i32* @qtable_creative_pccam, align 4
  %72 = call i32 @setup_qtable(%struct.gspca_dev* %70, i32 %71)
  br label %107

73:                                               ; preds = %1
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = load i32, i32* @D_STREAM, align 4
  %76 = call i32 @gspca_dbg(%struct.gspca_dev* %74, i32 %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.sd*, %struct.sd** %3, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AiptekMiniPenCam13, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %73
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = call i32 @spca504_read_info(%struct.gspca_dev* %83)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %85, i32 36, i32 8, i32 3, i32 158, i32 1)
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %88 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %87, i32 36, i32 8, i32 3, i32 158, i32 0)
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %90 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %89, i32 36, i32 0, i32 0, i32 157, i32 1)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %91, i32 8, i32 6, i32 0, i32 134, i32 1)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %94 = call i32 @reg_w_riv(%struct.gspca_dev* %93, i32 0, i32 9996, i32 5)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = call i32 @reg_w_riv(%struct.gspca_dev* %95, i32 0, i32 8976, i32 5)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %97, i32 1, i32 15, i32 0, i32 255, i32 0)
  br label %99

99:                                               ; preds = %82, %73
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = call i32 @reg_w_riv(%struct.gspca_dev* %100, i32 0, i32 8192, i32 0)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %103 = call i32 @reg_w_riv(%struct.gspca_dev* %102, i32 0, i32 10371, i32 1)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %105 = load i32, i32* @qtable_spca504_default, align 4
  %106 = call i32 @setup_qtable(%struct.gspca_dev* %104, i32 %105)
  br label %107

107:                                              ; preds = %99, %69, %27, %22
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %109 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  ret i32 %110
}

declare dso_local i32 @reg_w_riv(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca504B_PollingDataReady(%struct.gspca_dev*) #1

declare dso_local i32 @spca50x_GetFirmware(%struct.gspca_dev*) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @reg_w_1(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @spca504B_WaitCmdStatus(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @spca504_wait_status(%struct.gspca_dev*) #1

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @setup_qtable(%struct.gspca_dev*, i32) #1

declare dso_local i32 @spca504_read_info(%struct.gspca_dev*) #1

declare dso_local i32 @spca504A_acknowledged_command(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
