; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_setfreq_i.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_setfreq_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64 }

@SEN_OV7660 = common dso_local global i64 0, align 8
@SEN_OV7670 = common dso_local global i64 0, align 8
@OV7670_R13_COM8 = common dso_local global i32 0, align 4
@OV7670_COM8_BFILT = common dso_local global i32 0, align 4
@OV7670_R3B_COM11 = common dso_local global i32 0, align 4
@OV7670_COM11_HZAUTO = common dso_local global i32 0, align 4
@SEN_OV6620 = common dso_local global i64 0, align 8
@SEN_OV6630 = common dso_local global i64 0, align 8
@SEN_OV66308AF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32)* @setfreq_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfreq_i(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sd*, %struct.sd** %3, align 8
  %6 = getelementptr inbounds %struct.sd, %struct.sd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SEN_OV7660, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SEN_OV7670, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %10, %2
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %51 [
    i32 0, label %18
    i32 1, label %23
    i32 2, label %32
    i32 3, label %41
  ]

18:                                               ; preds = %16
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = load i32, i32* @OV7670_R13_COM8, align 4
  %21 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %22 = call i32 @i2c_w_mask(%struct.sd* %19, i32 %20, i32 0, i32 %21)
  br label %51

23:                                               ; preds = %16
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = load i32, i32* @OV7670_R13_COM8, align 4
  %26 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %27 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %28 = call i32 @i2c_w_mask(%struct.sd* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.sd*, %struct.sd** %3, align 8
  %30 = load i32, i32* @OV7670_R3B_COM11, align 4
  %31 = call i32 @i2c_w_mask(%struct.sd* %29, i32 %30, i32 8, i32 24)
  br label %51

32:                                               ; preds = %16
  %33 = load %struct.sd*, %struct.sd** %3, align 8
  %34 = load i32, i32* @OV7670_R13_COM8, align 4
  %35 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %36 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %37 = call i32 @i2c_w_mask(%struct.sd* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = load i32, i32* @OV7670_R3B_COM11, align 4
  %40 = call i32 @i2c_w_mask(%struct.sd* %38, i32 %39, i32 0, i32 24)
  br label %51

41:                                               ; preds = %16
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = load i32, i32* @OV7670_R13_COM8, align 4
  %44 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %45 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %46 = call i32 @i2c_w_mask(%struct.sd* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.sd*, %struct.sd** %3, align 8
  %48 = load i32, i32* @OV7670_R3B_COM11, align 4
  %49 = load i32, i32* @OV7670_COM11_HZAUTO, align 4
  %50 = call i32 @i2c_w_mask(%struct.sd* %47, i32 %48, i32 %49, i32 24)
  br label %51

51:                                               ; preds = %16, %41, %32, %23, %18
  br label %118

52:                                               ; preds = %10
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %117 [
    i32 0, label %54
    i32 1, label %59
    i32 2, label %88
  ]

54:                                               ; preds = %52
  %55 = load %struct.sd*, %struct.sd** %3, align 8
  %56 = call i32 @i2c_w_mask(%struct.sd* %55, i32 45, i32 0, i32 4)
  %57 = load %struct.sd*, %struct.sd** %3, align 8
  %58 = call i32 @i2c_w_mask(%struct.sd* %57, i32 42, i32 0, i32 128)
  br label %117

59:                                               ; preds = %52
  %60 = load %struct.sd*, %struct.sd** %3, align 8
  %61 = call i32 @i2c_w_mask(%struct.sd* %60, i32 45, i32 4, i32 4)
  %62 = load %struct.sd*, %struct.sd** %3, align 8
  %63 = call i32 @i2c_w_mask(%struct.sd* %62, i32 42, i32 128, i32 128)
  %64 = load %struct.sd*, %struct.sd** %3, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SEN_OV6620, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %59
  %70 = load %struct.sd*, %struct.sd** %3, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SEN_OV6630, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.sd*, %struct.sd** %3, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SEN_OV66308AF, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %69, %59
  %82 = load %struct.sd*, %struct.sd** %3, align 8
  %83 = call i32 @i2c_w(%struct.sd* %82, i32 43, i32 94)
  br label %87

84:                                               ; preds = %75
  %85 = load %struct.sd*, %struct.sd** %3, align 8
  %86 = call i32 @i2c_w(%struct.sd* %85, i32 43, i32 172)
  br label %87

87:                                               ; preds = %84, %81
  br label %117

88:                                               ; preds = %52
  %89 = load %struct.sd*, %struct.sd** %3, align 8
  %90 = call i32 @i2c_w_mask(%struct.sd* %89, i32 45, i32 4, i32 4)
  %91 = load %struct.sd*, %struct.sd** %3, align 8
  %92 = getelementptr inbounds %struct.sd, %struct.sd* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SEN_OV6620, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %108, label %96

96:                                               ; preds = %88
  %97 = load %struct.sd*, %struct.sd** %3, align 8
  %98 = getelementptr inbounds %struct.sd, %struct.sd* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SEN_OV6630, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.sd*, %struct.sd** %3, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SEN_OV66308AF, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102, %96, %88
  %109 = load %struct.sd*, %struct.sd** %3, align 8
  %110 = call i32 @i2c_w_mask(%struct.sd* %109, i32 42, i32 128, i32 128)
  %111 = load %struct.sd*, %struct.sd** %3, align 8
  %112 = call i32 @i2c_w(%struct.sd* %111, i32 43, i32 168)
  br label %116

113:                                              ; preds = %102
  %114 = load %struct.sd*, %struct.sd** %3, align 8
  %115 = call i32 @i2c_w_mask(%struct.sd* %114, i32 42, i32 0, i32 128)
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %52, %116, %87, %54
  br label %118

118:                                              ; preds = %117, %51
  ret void
}

declare dso_local i32 @i2c_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
