; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_smbus_read_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_smbus_read_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gspca_dev = type { i32 }

@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Did not receive i2c ACK\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @w9968cf_smbus_read_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_smbus_read_ack(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %5 = load %struct.sd*, %struct.sd** %2, align 8
  %6 = bitcast %struct.sd* %5 to %struct.gspca_dev*
  store %struct.gspca_dev* %6, %struct.gspca_dev** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %2, align 8
  %8 = call i32 @w9968cf_write_sb(%struct.sd* %7, i32 18)
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = call i32 @w9968cf_write_sb(%struct.sd* %9, i32 19)
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = call i32 @w9968cf_read_sb(%struct.sd* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.sd*, %struct.sd** %2, align 8
  %14 = call i32 @w9968cf_write_sb(%struct.sd* %13, i32 18)
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = load i32, i32* @D_USBI, align 4
  %24 = call i32 @gspca_dbg(%struct.gspca_dev* %22, i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  %27 = load %struct.sd*, %struct.sd** %2, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %17, %1
  ret void
}

declare dso_local i32 @w9968cf_write_sb(%struct.sd*, i32) #1

declare dso_local i32 @w9968cf_read_sb(%struct.sd*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
