; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-core.c_tw68_hw_init1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-core.c_tw68_hw_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw68_dev = type { i32, i32 }

@TW68_INTMASK = common dso_local global i32 0, align 4
@TW68_INTSTAT = common dso_local global i32 0, align 4
@TW68_DMAC = common dso_local global i32 0, align 4
@TW68_ACNTL = common dso_local global i32 0, align 4
@TW68_INFORM = common dso_local global i32 0, align 4
@TW68_OPFORM = common dso_local global i32 0, align 4
@TW68_HSYNC = common dso_local global i32 0, align 4
@TW68_CROP_HI = common dso_local global i32 0, align 4
@TW68_VDELAY_LO = common dso_local global i32 0, align 4
@TW68_VACTIVE_LO = common dso_local global i32 0, align 4
@TW68_HDELAY_LO = common dso_local global i32 0, align 4
@TW68_HACTIVE_LO = common dso_local global i32 0, align 4
@TW68_CNTRL1 = common dso_local global i32 0, align 4
@TW68_VSCALE_LO = common dso_local global i32 0, align 4
@TW68_SCALE_HI = common dso_local global i32 0, align 4
@TW68_HSCALE_LO = common dso_local global i32 0, align 4
@TW68_BRIGHT = common dso_local global i32 0, align 4
@TW68_CONTRAST = common dso_local global i32 0, align 4
@TW68_SHARPNESS = common dso_local global i32 0, align 4
@TW68_SAT_U = common dso_local global i32 0, align 4
@TW68_SAT_V = common dso_local global i32 0, align 4
@TW68_HUE = common dso_local global i32 0, align 4
@TW68_SHARP2 = common dso_local global i32 0, align 4
@TW68_VSHARP = common dso_local global i32 0, align 4
@TW68_CORING = common dso_local global i32 0, align 4
@TW68_CNTRL2 = common dso_local global i32 0, align 4
@TW68_SDT = common dso_local global i32 0, align 4
@TW68_SDTR = common dso_local global i32 0, align 4
@TW68_CLMPG = common dso_local global i32 0, align 4
@TW68_IAGC = common dso_local global i32 0, align 4
@TW68_AGCGAIN = common dso_local global i32 0, align 4
@TW68_PEAKWT = common dso_local global i32 0, align 4
@TW68_CLMPL = common dso_local global i32 0, align 4
@TW68_SYNCT = common dso_local global i32 0, align 4
@TW68_MISSCNT = common dso_local global i32 0, align 4
@TW68_PCLAMP = common dso_local global i32 0, align 4
@TW68_VCNTL1 = common dso_local global i32 0, align 4
@TW68_VCNTL2 = common dso_local global i32 0, align 4
@TW68_CKILL = common dso_local global i32 0, align 4
@TW68_COMB = common dso_local global i32 0, align 4
@TW68_LDLY = common dso_local global i32 0, align 4
@TW68_MISC1 = common dso_local global i32 0, align 4
@TW68_LOOP = common dso_local global i32 0, align 4
@TW68_MISC2 = common dso_local global i32 0, align 4
@TW68_MVSN = common dso_local global i32 0, align 4
@TW68_CLMD = common dso_local global i32 0, align 4
@TW68_IDCNTL = common dso_local global i32 0, align 4
@TW68_CLCNTL1 = common dso_local global i32 0, align 4
@TW68_VBIC = common dso_local global i32 0, align 4
@TW68_CAP_CTL = common dso_local global i32 0, align 4
@TW68_TESTREG = common dso_local global i32 0, align 4
@TW68_GPIOC = common dso_local global i32 0, align 4
@TW68_GPOE = common dso_local global i32 0, align 4
@TW68_GPDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw68_dev*)* @tw68_hw_init1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw68_hw_init1(%struct.tw68_dev* %0) #0 {
  %2 = alloca %struct.tw68_dev*, align 8
  store %struct.tw68_dev* %0, %struct.tw68_dev** %2, align 8
  %3 = load i32, i32* @TW68_INTMASK, align 4
  %4 = call i32 @tw_writel(i32 %3, i32 0)
  %5 = load i32, i32* @TW68_INTSTAT, align 4
  %6 = call i32 @tw_writel(i32 %5, i32 -1)
  %7 = load i32, i32* @TW68_DMAC, align 4
  %8 = call i32 @tw_writel(i32 %7, i32 5632)
  %9 = load i32, i32* @TW68_ACNTL, align 4
  %10 = call i32 @tw_writeb(i32 %9, i32 128)
  %11 = call i32 @msleep(i32 100)
  %12 = load i32, i32* @TW68_INFORM, align 4
  %13 = call i32 @tw_writeb(i32 %12, i32 64)
  %14 = load i32, i32* @TW68_OPFORM, align 4
  %15 = call i32 @tw_writeb(i32 %14, i32 4)
  %16 = load i32, i32* @TW68_HSYNC, align 4
  %17 = call i32 @tw_writeb(i32 %16, i32 0)
  %18 = load i32, i32* @TW68_ACNTL, align 4
  %19 = call i32 @tw_writeb(i32 %18, i32 66)
  %20 = load i32, i32* @TW68_CROP_HI, align 4
  %21 = call i32 @tw_writeb(i32 %20, i32 2)
  %22 = load i32, i32* @TW68_VDELAY_LO, align 4
  %23 = call i32 @tw_writeb(i32 %22, i32 18)
  %24 = load i32, i32* @TW68_VACTIVE_LO, align 4
  %25 = call i32 @tw_writeb(i32 %24, i32 240)
  %26 = load i32, i32* @TW68_HDELAY_LO, align 4
  %27 = call i32 @tw_writeb(i32 %26, i32 15)
  %28 = load i32, i32* @TW68_HACTIVE_LO, align 4
  %29 = call i32 @tw_writeb(i32 %28, i32 208)
  %30 = load i32, i32* @TW68_CNTRL1, align 4
  %31 = call i32 @tw_writeb(i32 %30, i32 205)
  %32 = load i32, i32* @TW68_VSCALE_LO, align 4
  %33 = call i32 @tw_writeb(i32 %32, i32 0)
  %34 = load i32, i32* @TW68_SCALE_HI, align 4
  %35 = call i32 @tw_writeb(i32 %34, i32 17)
  %36 = load i32, i32* @TW68_HSCALE_LO, align 4
  %37 = call i32 @tw_writeb(i32 %36, i32 0)
  %38 = load i32, i32* @TW68_BRIGHT, align 4
  %39 = call i32 @tw_writeb(i32 %38, i32 0)
  %40 = load i32, i32* @TW68_CONTRAST, align 4
  %41 = call i32 @tw_writeb(i32 %40, i32 92)
  %42 = load i32, i32* @TW68_SHARPNESS, align 4
  %43 = call i32 @tw_writeb(i32 %42, i32 81)
  %44 = load i32, i32* @TW68_SAT_U, align 4
  %45 = call i32 @tw_writeb(i32 %44, i32 128)
  %46 = load i32, i32* @TW68_SAT_V, align 4
  %47 = call i32 @tw_writeb(i32 %46, i32 128)
  %48 = load i32, i32* @TW68_HUE, align 4
  %49 = call i32 @tw_writeb(i32 %48, i32 0)
  %50 = load i32, i32* @TW68_SHARP2, align 4
  %51 = call i32 @tw_writeb(i32 %50, i32 83)
  %52 = load i32, i32* @TW68_VSHARP, align 4
  %53 = call i32 @tw_writeb(i32 %52, i32 128)
  %54 = load i32, i32* @TW68_CORING, align 4
  %55 = call i32 @tw_writeb(i32 %54, i32 68)
  %56 = load i32, i32* @TW68_CNTRL2, align 4
  %57 = call i32 @tw_writeb(i32 %56, i32 0)
  %58 = load i32, i32* @TW68_SDT, align 4
  %59 = call i32 @tw_writeb(i32 %58, i32 7)
  %60 = load i32, i32* @TW68_SDTR, align 4
  %61 = call i32 @tw_writeb(i32 %60, i32 127)
  %62 = load i32, i32* @TW68_CLMPG, align 4
  %63 = call i32 @tw_writeb(i32 %62, i32 80)
  %64 = load i32, i32* @TW68_IAGC, align 4
  %65 = call i32 @tw_writeb(i32 %64, i32 34)
  %66 = load i32, i32* @TW68_AGCGAIN, align 4
  %67 = call i32 @tw_writeb(i32 %66, i32 240)
  %68 = load i32, i32* @TW68_PEAKWT, align 4
  %69 = call i32 @tw_writeb(i32 %68, i32 216)
  %70 = load i32, i32* @TW68_CLMPL, align 4
  %71 = call i32 @tw_writeb(i32 %70, i32 60)
  %72 = load i32, i32* @TW68_SYNCT, align 4
  %73 = call i32 @tw_writeb(i32 %72, i32 48)
  %74 = load i32, i32* @TW68_MISSCNT, align 4
  %75 = call i32 @tw_writeb(i32 %74, i32 68)
  %76 = load i32, i32* @TW68_PCLAMP, align 4
  %77 = call i32 @tw_writeb(i32 %76, i32 40)
  %78 = load i32, i32* @TW68_VCNTL1, align 4
  %79 = call i32 @tw_writeb(i32 %78, i32 4)
  %80 = load i32, i32* @TW68_VCNTL2, align 4
  %81 = call i32 @tw_writeb(i32 %80, i32 0)
  %82 = load i32, i32* @TW68_CKILL, align 4
  %83 = call i32 @tw_writeb(i32 %82, i32 104)
  %84 = load i32, i32* @TW68_COMB, align 4
  %85 = call i32 @tw_writeb(i32 %84, i32 68)
  %86 = load i32, i32* @TW68_LDLY, align 4
  %87 = call i32 @tw_writeb(i32 %86, i32 48)
  %88 = load i32, i32* @TW68_MISC1, align 4
  %89 = call i32 @tw_writeb(i32 %88, i32 20)
  %90 = load i32, i32* @TW68_LOOP, align 4
  %91 = call i32 @tw_writeb(i32 %90, i32 165)
  %92 = load i32, i32* @TW68_MISC2, align 4
  %93 = call i32 @tw_writeb(i32 %92, i32 224)
  %94 = load i32, i32* @TW68_MVSN, align 4
  %95 = call i32 @tw_writeb(i32 %94, i32 0)
  %96 = load i32, i32* @TW68_CLMD, align 4
  %97 = call i32 @tw_writeb(i32 %96, i32 5)
  %98 = load i32, i32* @TW68_IDCNTL, align 4
  %99 = call i32 @tw_writeb(i32 %98, i32 0)
  %100 = load i32, i32* @TW68_CLCNTL1, align 4
  %101 = call i32 @tw_writeb(i32 %100, i32 0)
  %102 = load i32, i32* @TW68_VBIC, align 4
  %103 = call i32 @tw_writel(i32 %102, i32 3)
  %104 = load i32, i32* @TW68_CAP_CTL, align 4
  %105 = call i32 @tw_writel(i32 %104, i32 3)
  %106 = load i32, i32* @TW68_DMAC, align 4
  %107 = call i32 @tw_writel(i32 %106, i32 8192)
  %108 = load i32, i32* @TW68_TESTREG, align 4
  %109 = call i32 @tw_writel(i32 %108, i32 0)
  %110 = load i32, i32* @TW68_GPIOC, align 4
  %111 = call i32 @tw_writel(i32 %110, i32 0)
  %112 = load i32, i32* @TW68_GPOE, align 4
  %113 = call i32 @tw_writel(i32 %112, i32 15)
  %114 = load i32, i32* @TW68_GPDATA, align 4
  %115 = call i32 @tw_writel(i32 %114, i32 0)
  %116 = load %struct.tw68_dev*, %struct.tw68_dev** %2, align 8
  %117 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %116, i32 0, i32 1
  %118 = call i32 @mutex_init(i32* %117)
  %119 = load %struct.tw68_dev*, %struct.tw68_dev** %2, align 8
  %120 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %119, i32 0, i32 0
  %121 = call i32 @spin_lock_init(i32* %120)
  %122 = load %struct.tw68_dev*, %struct.tw68_dev** %2, align 8
  %123 = call i32 @tw68_video_init1(%struct.tw68_dev* %122)
  ret i32 0
}

declare dso_local i32 @tw_writel(i32, i32) #1

declare dso_local i32 @tw_writeb(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tw68_video_init1(%struct.tw68_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
