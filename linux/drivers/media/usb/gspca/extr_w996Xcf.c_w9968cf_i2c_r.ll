; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_i2c_r.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_i2c_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.gspca_dev = type { i32 }

@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"i2c [0x%02X] -> 0x%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"i2c read [0x%02x] failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @w9968cf_i2c_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9968cf_i2c_r(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = bitcast %struct.sd* %8 to %struct.gspca_dev*
  store %struct.gspca_dev* %9, %struct.gspca_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = call i32 @w9968cf_write_sb(%struct.sd* %10, i32 19)
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = call i32 @w9968cf_smbus_start(%struct.sd* %12)
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @w9968cf_smbus_write_byte(%struct.sd* %14, i32 %17)
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = call i32 @w9968cf_smbus_read_ack(%struct.sd* %19)
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @w9968cf_smbus_write_byte(%struct.sd* %21, i32 %22)
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = call i32 @w9968cf_smbus_read_ack(%struct.sd* %24)
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = call i32 @w9968cf_smbus_stop(%struct.sd* %26)
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = call i32 @w9968cf_smbus_start(%struct.sd* %28)
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = call i32 @w9968cf_smbus_write_byte(%struct.sd* %30, i32 %34)
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = call i32 @w9968cf_smbus_read_ack(%struct.sd* %36)
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = call i32 @w9968cf_smbus_read_byte(%struct.sd* %38, i32* %7)
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = call i32 @w9968cf_smbus_write_nack(%struct.sd* %40)
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = call i32 @w9968cf_smbus_stop(%struct.sd* %42)
  %44 = load %struct.sd*, %struct.sd** %3, align 8
  %45 = call i32 @w9968cf_write_sb(%struct.sd* %44, i32 48)
  %46 = load %struct.sd*, %struct.sd** %3, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %2
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %54 = load i32, i32* @D_USBI, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @gspca_dbg(%struct.gspca_dev* %53, i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  br label %62

58:                                               ; preds = %2
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @gspca_err(%struct.gspca_dev* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @w9968cf_write_sb(%struct.sd*, i32) #1

declare dso_local i32 @w9968cf_smbus_start(%struct.sd*) #1

declare dso_local i32 @w9968cf_smbus_write_byte(%struct.sd*, i32) #1

declare dso_local i32 @w9968cf_smbus_read_ack(%struct.sd*) #1

declare dso_local i32 @w9968cf_smbus_stop(%struct.sd*) #1

declare dso_local i32 @w9968cf_smbus_read_byte(%struct.sd*, i32*) #1

declare dso_local i32 @w9968cf_smbus_write_nack(%struct.sd*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
