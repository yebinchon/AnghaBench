; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca501.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca501.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sd = type { i32 }

@spca501_3com_open_data = common dso_local global i32 0, align 4
@spca501c_arowana_open_data = common dso_local global i32 0, align 4
@spca501c_mysterious_init_data = common dso_local global i32 0, align 4
@spca501_open_data = common dso_local global i32 0, align 4
@SPCA50X_REG_USB = common dso_local global i32 0, align 4
@SPCA501_REG_CTLRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %22 [
    i32 128, label %10
    i32 131, label %14
    i32 129, label %14
    i32 130, label %18
  ]

10:                                               ; preds = %1
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = load i32, i32* @spca501_3com_open_data, align 4
  %13 = call i32 @write_vector(%struct.gspca_dev* %11, i32 %12)
  br label %26

14:                                               ; preds = %1, %1
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = load i32, i32* @spca501c_arowana_open_data, align 4
  %17 = call i32 @write_vector(%struct.gspca_dev* %15, i32 %16)
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load i32, i32* @spca501c_mysterious_init_data, align 4
  %21 = call i32 @write_vector(%struct.gspca_dev* %19, i32 %20)
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i32, i32* @spca501_open_data, align 4
  %25 = call i32 @write_vector(%struct.gspca_dev* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %18, %14, %10
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* @SPCA50X_REG_USB, align 4
  %41 = call i32 @reg_write(%struct.gspca_dev* %39, i32 %40, i32 6, i32 148)
  %42 = load i32, i32* %4, align 4
  switch i32 %42, label %51 [
    i32 0, label %43
    i32 1, label %47
  ]

43:                                               ; preds = %26
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32, i32* @SPCA50X_REG_USB, align 4
  %46 = call i32 @reg_write(%struct.gspca_dev* %44, i32 %45, i32 7, i32 74)
  br label %55

47:                                               ; preds = %26
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = load i32, i32* @SPCA50X_REG_USB, align 4
  %50 = call i32 @reg_write(%struct.gspca_dev* %48, i32 %49, i32 7, i32 4170)
  br label %55

51:                                               ; preds = %26
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = load i32, i32* @SPCA50X_REG_USB, align 4
  %54 = call i32 @reg_write(%struct.gspca_dev* %52, i32 %53, i32 7, i32 8266)
  br label %55

55:                                               ; preds = %51, %47, %43
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = load i32, i32* @SPCA501_REG_CTLRL, align 4
  %58 = call i32 @reg_write(%struct.gspca_dev* %56, i32 %57, i32 1, i32 2)
  ret i32 0
}

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_write(%struct.gspca_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
