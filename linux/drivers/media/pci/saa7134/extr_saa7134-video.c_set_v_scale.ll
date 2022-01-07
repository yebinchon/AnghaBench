; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_set_v_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_set_v_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"yscale LPI yscale=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"yscale ACM yscale=%d val=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*, i32, i32)* @set_v_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_v_scale(%struct.saa7134_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @SAA7134_V_SCALE_RATIO1(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 255
  %13 = call i32 @saa_writeb(i32 %10, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @SAA7134_V_SCALE_RATIO2(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 8
  %18 = call i32 @saa_writeb(i32 %15, i32 %17)
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %20 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 0
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 2048
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i32, ...) @video_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @SAA7134_V_FILTER(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = or i32 0, %32
  %34 = call i32 @saa_writeb(i32 %31, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @SAA7134_LUMA_CONTRAST(i32 %35)
  %37 = call i32 @saa_writeb(i32 %36, i32 64)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @SAA7134_CHROMA_SATURATION(i32 %38)
  %40 = call i32 @saa_writeb(i32 %39, i32 64)
  br label %60

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 65536, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i8*, i32, ...) @video_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @SAA7134_V_FILTER(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = or i32 1, %49
  %51 = call i32 @saa_writeb(i32 %48, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @SAA7134_LUMA_CONTRAST(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @saa_writeb(i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @SAA7134_CHROMA_SATURATION(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @saa_writeb(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %41, %27
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @SAA7134_LUMA_BRIGHT(i32 %61)
  %63 = call i32 @saa_writeb(i32 %62, i32 128)
  ret void
}

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @SAA7134_V_SCALE_RATIO1(i32) #1

declare dso_local i32 @SAA7134_V_SCALE_RATIO2(i32) #1

declare dso_local i32 @video_dbg(i8*, i32, ...) #1

declare dso_local i32 @SAA7134_V_FILTER(i32) #1

declare dso_local i32 @SAA7134_LUMA_CONTRAST(i32) #1

declare dso_local i32 @SAA7134_CHROMA_SATURATION(i32) #1

declare dso_local i32 @SAA7134_LUMA_BRIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
