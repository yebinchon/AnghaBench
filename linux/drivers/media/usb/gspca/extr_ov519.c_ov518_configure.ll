; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov518_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov518_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_regvals = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@ov518_configure.init_518 = internal constant [8 x %struct.ov_regvals] [%struct.ov_regvals { i32 129, i32 64 }, %struct.ov_regvals { i32 130, i32 225 }, %struct.ov_regvals { i32 129, i32 62 }, %struct.ov_regvals { i32 130, i32 225 }, %struct.ov_regvals { i32 129, i32 0 }, %struct.ov_regvals { i32 130, i32 225 }, %struct.ov_regvals { i32 70, i32 0 }, %struct.ov_regvals { i32 93, i32 3 }], align 16
@ov518_configure.norm_518 = internal constant [10 x %struct.ov_regvals] [%struct.ov_regvals { i32 128, i32 2 }, %struct.ov_regvals { i32 128, i32 1 }, %struct.ov_regvals { i32 49, i32 15 }, %struct.ov_regvals { i32 93, i32 3 }, %struct.ov_regvals { i32 36, i32 159 }, %struct.ov_regvals { i32 37, i32 144 }, %struct.ov_regvals { i32 32, i32 0 }, %struct.ov_regvals { i32 81, i32 4 }, %struct.ov_regvals { i32 113, i32 25 }, %struct.ov_regvals { i32 47, i32 128 }], align 16
@ov518_configure.norm_518_p = internal constant [16 x %struct.ov_regvals] [%struct.ov_regvals { i32 128, i32 2 }, %struct.ov_regvals { i32 128, i32 1 }, %struct.ov_regvals { i32 49, i32 15 }, %struct.ov_regvals { i32 93, i32 3 }, %struct.ov_regvals { i32 36, i32 159 }, %struct.ov_regvals { i32 37, i32 144 }, %struct.ov_regvals { i32 32, i32 96 }, %struct.ov_regvals { i32 81, i32 2 }, %struct.ov_regvals { i32 113, i32 25 }, %struct.ov_regvals { i32 64, i32 255 }, %struct.ov_regvals { i32 65, i32 66 }, %struct.ov_regvals { i32 70, i32 0 }, %struct.ov_regvals { i32 51, i32 4 }, %struct.ov_regvals { i32 33, i32 25 }, %struct.ov_regvals { i32 63, i32 16 }, %struct.ov_regvals { i32 47, i32 128 }], align 16
@R51x_SYS_CUST_ID = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Device revision %d\0A\00", align 1
@R518_GPIO_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @ov518_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov518_configure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = load i32, i32* @R51x_SYS_CUST_ID, align 4
  %8 = call i32 @reg_r(%struct.sd* %6, i32 %7)
  %9 = and i32 %8, 31
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load i32, i32* @D_PROBE, align 4
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gspca_dbg(%struct.gspca_dev* %12, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([8 x %struct.ov_regvals], [8 x %struct.ov_regvals]* @ov518_configure.init_518, i64 0, i64 0))
  %20 = call i32 @write_regvals(%struct.sd* %18, %struct.ov_regvals* getelementptr inbounds ([8 x %struct.ov_regvals], [8 x %struct.ov_regvals]* @ov518_configure.init_518, i64 0, i64 0), i32 %19)
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = load i32, i32* @R518_GPIO_CTL, align 4
  %23 = call i32 @reg_w_mask(%struct.sd* %21, i32 %22, i32 0, i32 2)
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %35 [
    i32 132, label %27
    i32 131, label %31
  ]

27:                                               ; preds = %1
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([10 x %struct.ov_regvals], [10 x %struct.ov_regvals]* @ov518_configure.norm_518, i64 0, i64 0))
  %30 = call i32 @write_regvals(%struct.sd* %28, %struct.ov_regvals* getelementptr inbounds ([10 x %struct.ov_regvals], [10 x %struct.ov_regvals]* @ov518_configure.norm_518, i64 0, i64 0), i32 %29)
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([16 x %struct.ov_regvals], [16 x %struct.ov_regvals]* @ov518_configure.norm_518_p, i64 0, i64 0))
  %34 = call i32 @write_regvals(%struct.sd* %32, %struct.ov_regvals* getelementptr inbounds ([16 x %struct.ov_regvals], [16 x %struct.ov_regvals]* @ov518_configure.norm_518_p, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %1, %31, %27
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = call i32 @ov51x_upload_quan_tables(%struct.sd* %36)
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = call i32 @reg_w(%struct.sd* %38, i32 47, i32 128)
  ret void
}

declare dso_local i32 @reg_r(%struct.sd*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i32 @write_regvals(%struct.sd*, %struct.ov_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_regvals*) #1

declare dso_local i32 @reg_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @ov51x_upload_quan_tables(%struct.sd*) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
