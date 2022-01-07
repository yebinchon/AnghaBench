; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk014.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk014.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i32 }

@QUALITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"set intf %d %d failed\0A\00", align 1
@D_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"camera started alt: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @jpeg_define(i32 %10, i32 %14, i32 %18, i32 34)
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @QUALITY, align 4
  %24 = call i32 @jpeg_set_qual(i32 %22, i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_set_interface(i32 %27, i32 %30, i32 1)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @set_par(%struct.gspca_dev* %32, i32 268435456)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @set_par(%struct.gspca_dev* %34, i32 0)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @set_par(%struct.gspca_dev* %36, i32 -2147295231)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @set_par(%struct.gspca_dev* %38, i32 335544320)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 320
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store i32 -2147295231, i32* %5, align 4
  br label %47

46:                                               ; preds = %1
  store i32 1073868800, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @set_par(%struct.gspca_dev* %48, i32 %49)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_set_interface(i32 %53, i32 %56, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %47
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %117

74:                                               ; preds = %47
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = call i32 @reg_r(%struct.gspca_dev* %75, i32 1584)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %78 = call i32 @rcv_val(%struct.gspca_dev* %77, i32 32)
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = call i32 @reg_r(%struct.gspca_dev* %79, i32 1616)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = call i32 @snd_val(%struct.gspca_dev* %81, i32 32, i32 -1)
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = call i32 @reg_w(%struct.gspca_dev* %83, i32 1568, i32 0)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = call i32 @reg_w(%struct.gspca_dev* %85, i32 1584, i32 0)
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %88 = call i32 @reg_w(%struct.gspca_dev* %87, i32 1600, i32 0)
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %90 = call i32 @reg_w(%struct.gspca_dev* %89, i32 1616, i32 0)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = call i32 @reg_w(%struct.gspca_dev* %91, i32 1632, i32 0)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %94 = call i32 @set_par(%struct.gspca_dev* %93, i32 159383552)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = call i32 @set_par(%struct.gspca_dev* %95, i32 176160768)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = call i32 @set_par(%struct.gspca_dev* %97, i32 192937984)
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %100 = call i32 @set_par(%struct.gspca_dev* %99, i32 218300416)
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %102 = call i32 @set_par(%struct.gspca_dev* %101, i32 16777216)
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %104 = call i32 @set_par(%struct.gspca_dev* %103, i32 16777216)
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %74
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = load i32, i32* @D_STREAM, align 4
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @gspca_dbg(%struct.gspca_dev* %110, i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %109, %74
  br label %117

117:                                              ; preds = %116, %63
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %119 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  ret i32 %120
}

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @set_par(%struct.gspca_dev*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @rcv_val(%struct.gspca_dev*, i32) #1

declare dso_local i32 @snd_val(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
