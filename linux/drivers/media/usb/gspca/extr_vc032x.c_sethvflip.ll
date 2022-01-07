; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_sethvflip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_sethvflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@FL_HFLIP = common dso_local global i32 0, align 4
@FL_VFLIP = common dso_local global i32 0, align 4
@OV7660_MVFP_MIRROR = common dso_local global i32 0, align 4
@OV7660_MVFP_VFLIP = common dso_local global i32 0, align 4
@OV7660_REG_MVFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32)* @sethvflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sethvflip(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load %struct.sd*, %struct.sd** %7, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FL_HFLIP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.sd*, %struct.sd** %7, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FL_VFLIP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.sd*, %struct.sd** %7, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %97 [
    i32 133, label %38
    i32 132, label %38
    i32 131, label %38
    i32 130, label %60
    i32 129, label %60
    i32 128, label %82
  ]

38:                                               ; preds = %34, %34, %34
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %43 = call i32 @i2c_write(%struct.gspca_dev* %41, i32 240, i32* %42, i32 2)
  %44 = load %struct.sd*, %struct.sd** %7, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 133
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 3, i32 1
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 2, %51
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 1, %53
  %55 = or i32 %52, %54
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %59 = call i32 @i2c_write(%struct.gspca_dev* %57, i32 32, i32* %58, i32 2)
  br label %97

60:                                               ; preds = %34, %34
  %61 = load %struct.sd*, %struct.sd** %7, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 130
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 7
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @OV7660_MVFP_MIRROR, align 4
  %69 = load i32, i32* %5, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* @OV7660_MVFP_VFLIP, align 4
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %71, %72
  %74 = or i32 %70, %73
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %79 = load i32, i32* @OV7660_REG_MVFP, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %81 = call i32 @i2c_write(%struct.gspca_dev* %78, i32 %79, i32* %80, i32 1)
  br label %97

82:                                               ; preds = %34
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %83, align 4
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %86 = call i32 @i2c_write(%struct.gspca_dev* %84, i32 3, i32* %85, i32 1)
  %87 = load i32, i32* %5, align 4
  %88 = mul nsw i32 128, %87
  %89 = load i32, i32* %6, align 4
  %90 = mul nsw i32 64, %89
  %91 = or i32 %88, %90
  %92 = or i32 %91, 6
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %92, i32* %93, align 4
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %96 = call i32 @i2c_write(%struct.gspca_dev* %94, i32 30, i32* %95, i32 1)
  br label %97

97:                                               ; preds = %34, %82, %60, %38
  ret void
}

declare dso_local i32 @i2c_write(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
