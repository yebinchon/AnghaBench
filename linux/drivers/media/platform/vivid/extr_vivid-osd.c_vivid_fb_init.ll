; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-osd.c_vivid_fb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-osd.c_vivid_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32, i32*, i32 }

@MAX_OSD_HEIGHT = common dso_local global i32 0, align 4
@MAX_OSD_WIDTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Framebuffer at 0x%lx, mapped to 0x%p, size %dk\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_fb_init(%struct.vivid_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  %5 = load i32, i32* @MAX_OSD_HEIGHT, align 4
  %6 = load i32, i32* @MAX_OSD_WIDTH, align 4
  %7 = mul nsw i32 %5, %6
  %8 = mul nsw i32 %7, 2
  %9 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %10 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @GFP_DMA32, align 4
  %16 = or i32 %14, %15
  %17 = call i32* @kzalloc(i32 %13, i32 %16)
  %18 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %19 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %69

27:                                               ; preds = %1
  %28 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %29 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @virt_to_phys(i32* %30)
  %32 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %35 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %41 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %42, 1024
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %36, i32* %39, i32 %43)
  %45 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %46 = call i32 @vivid_fb_init_vidmode(%struct.vivid_dev* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %51 = call i32 @vivid_fb_release_buffers(%struct.vivid_dev* %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %69

53:                                               ; preds = %27
  %54 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %55 = call i32 @vivid_clear_fb(%struct.vivid_dev* %54)
  %56 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %57 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %56, i32 0, i32 1
  %58 = call i64 @register_framebuffer(i32* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %62 = call i32 @vivid_fb_release_buffers(%struct.vivid_dev* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %69

65:                                               ; preds = %53
  %66 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %67 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %66, i32 0, i32 1
  %68 = call i32 @vivid_fb_set_par(i32* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %60, %49, %24
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @virt_to_phys(i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32*, i32) #1

declare dso_local i32 @vivid_fb_init_vidmode(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_fb_release_buffers(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_clear_fb(%struct.vivid_dev*) #1

declare dso_local i64 @register_framebuffer(i32*) #1

declare dso_local i32 @vivid_fb_set_par(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
