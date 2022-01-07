; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca505.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca505.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i64 }

@sd_start.mode_tb = internal global [5 x [3 x i32]] [[3 x i32] [i32 0, i32 16, i32 16], [3 x i32] [i32 1, i32 26, i32 26], [3 x i32] [i32 2, i32 28, i32 29], [3 x i32] [i32 4, i32 52, i32 52], [3 x i32] [i32 5, i32 64, i32 64]], align 16
@Nxultra = common dso_local global i64 0, align 8
@spca505b_open_data_ccd = common dso_local global i32 0, align 4
@spca505_open_data_ccd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"register read failed err: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"After vector read returns 0x%04x should be 0x0101\0A\00", align 1
@SPCA50X_REG_COMPRESS = common dso_local global i32 0, align 4
@SPCA50X_REG_USB = common dso_local global i32 0, align 4
@SPCA50X_USB_CTRL = common dso_local global i32 0, align 4
@SPCA50X_CUSB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %4, align 8
  %9 = load %struct.sd*, %struct.sd** %4, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @Nxultra, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = load i32, i32* @spca505b_open_data_ccd, align 4
  %17 = call i32 @write_vector(%struct.gspca_dev* %15, i32 %16)
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = load i32, i32* @spca505_open_data_ccd, align 4
  %21 = call i32 @write_vector(%struct.gspca_dev* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = call i32 @reg_read(%struct.gspca_dev* %23, i32 6, i32 22)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @gspca_err(%struct.gspca_dev* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %91

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 257
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = call i32 @reg_write(%struct.gspca_dev* %39, i32 6, i32 22, i32 10)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %91

45:                                               ; preds = %38
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %47 = call i32 @reg_write(%struct.gspca_dev* %46, i32 5, i32 194, i32 18)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = call i32 @reg_write(%struct.gspca_dev* %48, i32 2, i32 0, i32 0)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = load i32, i32* @SPCA50X_REG_COMPRESS, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @sd_start.mode_tb, i64 0, i64 %65
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %66, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @reg_write(%struct.gspca_dev* %62, i32 %63, i32 0, i32 %68)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %71 = load i32, i32* @SPCA50X_REG_COMPRESS, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @sd_start.mode_tb, i64 0, i64 %73
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %74, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @reg_write(%struct.gspca_dev* %70, i32 %71, i32 6, i32 %76)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %79 = load i32, i32* @SPCA50X_REG_COMPRESS, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @sd_start.mode_tb, i64 0, i64 %81
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %82, i64 0, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @reg_write(%struct.gspca_dev* %78, i32 %79, i32 7, i32 %84)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %87 = load i32, i32* @SPCA50X_REG_USB, align 4
  %88 = load i32, i32* @SPCA50X_USB_CTRL, align 4
  %89 = load i32, i32* @SPCA50X_CUSB_ENABLE, align 4
  %90 = call i32 @reg_write(%struct.gspca_dev* %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %45, %43, %27
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_read(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @reg_write(%struct.gspca_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
