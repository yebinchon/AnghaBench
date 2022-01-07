; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov511_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov511_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_regvals = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@ov511_configure.init_511 = internal constant [7 x %struct.ov_regvals] [%struct.ov_regvals { i32 129, i32 127 }, %struct.ov_regvals { i32 130, i32 1 }, %struct.ov_regvals { i32 129, i32 127 }, %struct.ov_regvals { i32 130, i32 1 }, %struct.ov_regvals { i32 129, i32 63 }, %struct.ov_regvals { i32 130, i32 1 }, %struct.ov_regvals { i32 129, i32 61 }], align 16
@ov511_configure.norm_511 = internal constant [7 x %struct.ov_regvals] [%struct.ov_regvals { i32 132, i32 1 }, %struct.ov_regvals { i32 128, i32 0 }, %struct.ov_regvals { i32 128, i32 2 }, %struct.ov_regvals { i32 128, i32 0 }, %struct.ov_regvals { i32 131, i32 31 }, %struct.ov_regvals { i32 134, i32 0 }, %struct.ov_regvals { i32 133, i32 3 }], align 16
@ov511_configure.norm_511_p = internal constant [7 x %struct.ov_regvals] [%struct.ov_regvals { i32 132, i32 255 }, %struct.ov_regvals { i32 128, i32 0 }, %struct.ov_regvals { i32 128, i32 2 }, %struct.ov_regvals { i32 128, i32 0 }, %struct.ov_regvals { i32 131, i32 255 }, %struct.ov_regvals { i32 134, i32 0 }, %struct.ov_regvals { i32 133, i32 3 }], align 16
@ov511_configure.compress_511 = internal constant [8 x %struct.ov_regvals] [%struct.ov_regvals { i32 112, i32 31 }, %struct.ov_regvals { i32 113, i32 5 }, %struct.ov_regvals { i32 114, i32 6 }, %struct.ov_regvals { i32 115, i32 6 }, %struct.ov_regvals { i32 116, i32 20 }, %struct.ov_regvals { i32 117, i32 3 }, %struct.ov_regvals { i32 118, i32 4 }, %struct.ov_regvals { i32 119, i32 4 }], align 16
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Device custom id %x\0A\00", align 1
@R51x_SYS_CUST_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @ov511_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov511_configure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = load i32, i32* @D_PROBE, align 4
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = load i32, i32* @R51x_SYS_CUST_ID, align 4
  %10 = call i32 @reg_r(%struct.sd* %8, i32 %9)
  %11 = call i32 @gspca_dbg(%struct.gspca_dev* %6, i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* @ov511_configure.init_511, i64 0, i64 0))
  %14 = call i32 @write_regvals(%struct.sd* %12, %struct.ov_regvals* getelementptr inbounds ([7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* @ov511_configure.init_511, i64 0, i64 0), i32 %13)
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %26 [
    i32 136, label %18
    i32 135, label %22
  ]

18:                                               ; preds = %1
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* @ov511_configure.norm_511, i64 0, i64 0))
  %21 = call i32 @write_regvals(%struct.sd* %19, %struct.ov_regvals* getelementptr inbounds ([7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* @ov511_configure.norm_511, i64 0, i64 0), i32 %20)
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* @ov511_configure.norm_511_p, i64 0, i64 0))
  %25 = call i32 @write_regvals(%struct.sd* %23, %struct.ov_regvals* getelementptr inbounds ([7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* @ov511_configure.norm_511_p, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %1, %22, %18
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([8 x %struct.ov_regvals], [8 x %struct.ov_regvals]* @ov511_configure.compress_511, i64 0, i64 0))
  %29 = call i32 @write_regvals(%struct.sd* %27, %struct.ov_regvals* getelementptr inbounds ([8 x %struct.ov_regvals], [8 x %struct.ov_regvals]* @ov511_configure.compress_511, i64 0, i64 0), i32 %28)
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = call i32 @ov51x_upload_quan_tables(%struct.sd* %30)
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i32 @reg_r(%struct.sd*, i32) #1

declare dso_local i32 @write_regvals(%struct.sd*, %struct.ov_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_regvals*) #1

declare dso_local i32 @ov51x_upload_quan_tables(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
