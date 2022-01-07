; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_touptek.c_configure_encrypted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_touptek.c_configure_encrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 }
%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@configure_encrypted.reg_init_begin = internal constant [11 x %struct.cmd] [%struct.cmd { i32 256, i32 130 }, %struct.cmd { i32 0, i32 136 }, %struct.cmd { i32 256, i32 137 }, %struct.cmd { i32 4, i32 129 }, %struct.cmd { i32 1, i32 128 }, %struct.cmd { i32 8, i32 135 }, %struct.cmd { i32 1, i32 134 }, %struct.cmd { i32 4, i32 132 }, %struct.cmd { i32 64, i32 133 }, %struct.cmd { i32 0, i32 137 }, %struct.cmd { i32 256, i32 137 }], align 16
@configure_encrypted.reg_init_end = internal constant [8 x %struct.cmd] [%struct.cmd { i32 0, i32 137 }, %struct.cmd { i32 769, i32 12718 }, %struct.cmd { i32 2053, i32 12388 }, %struct.cmd { i32 113, i32 12656 }, %struct.cmd { i32 4318, i32 131 }, %struct.cmd { i32 0, i32 136 }, %struct.cmd { i32 16, i32 133 }, %struct.cmd { i32 256, i32 136 }], align 16
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Encrypted begin, w = %u\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Encrypted end\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @configure_encrypted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_encrypted(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = load i32, i32* @D_STREAM, align 4
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %3, i32 %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([11 x %struct.cmd], [11 x %struct.cmd]* @configure_encrypted.reg_init_begin, i64 0, i64 0))
  %12 = call i32 @reg_w_buf(%struct.gspca_dev* %10, %struct.cmd* getelementptr inbounds ([11 x %struct.cmd], [11 x %struct.cmd]* @configure_encrypted.reg_init_begin, i64 0, i64 0), i32 %11)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = call i32 @configure_wh(%struct.gspca_dev* %13)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([8 x %struct.cmd], [8 x %struct.cmd]* @configure_encrypted.reg_init_end, i64 0, i64 0))
  %17 = call i32 @reg_w_buf(%struct.gspca_dev* %15, %struct.cmd* getelementptr inbounds ([8 x %struct.cmd], [8 x %struct.cmd]* @configure_encrypted.reg_init_end, i64 0, i64 0), i32 %16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = call i32 @reg_w(%struct.gspca_dev* %18, i32 256, i32 137)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @reg_w(%struct.gspca_dev* %20, i32 0, i32 137)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = load i32, i32* @D_STREAM, align 4
  %24 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %22, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cmd*) #1

declare dso_local i32 @configure_wh(%struct.gspca_dev*) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
