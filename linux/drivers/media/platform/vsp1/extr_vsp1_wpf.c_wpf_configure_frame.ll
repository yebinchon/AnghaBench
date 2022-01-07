; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_configure_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_configure_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_rwpf = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@WPF_CTRL_VFLIP = common dso_local global i32 0, align 4
@WPF_CTRL_HFLIP = common dso_local global i32 0, align 4
@VI6_WPF_OUTFMT_PDV_SHIFT = common dso_local global i32 0, align 4
@VI6_WPF_OUTFMT_FLP = common dso_local global i32 0, align 4
@VI6_WPF_OUTFMT_HFLP = common dso_local global i32 0, align 4
@VI6_WPF_OUTFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @wpf_configure_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpf_configure_frame(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vsp1_rwpf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %13 = load i32, i32* @WPF_CTRL_VFLIP, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = load i32, i32* @WPF_CTRL_HFLIP, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = or i32 %14, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %19 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %18, i32 0, i32 0
  %20 = call %struct.vsp1_rwpf* @to_rwpf(i32* %19)
  store %struct.vsp1_rwpf* %20, %struct.vsp1_rwpf** %10, align 8
  %21 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %22 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %27 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %34 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  %39 = or i32 %32, %38
  %40 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %41 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %44 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %49 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @VI6_WPF_OUTFMT_PDV_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %54 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  store i32 %56, i32* %12, align 4
  %57 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %58 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WPF_CTRL_VFLIP, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %4
  %66 = load i32, i32* @VI6_WPF_OUTFMT_FLP, align 4
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %65, %4
  %70 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %71 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WPF_CTRL_HFLIP, align 4
  %75 = call i32 @BIT(i32 %74)
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i32, i32* @VI6_WPF_OUTFMT_HFLP, align 4
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %78, %69
  %83 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %84 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %85 = load i32, i32* @VI6_WPF_OUTFMT, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %83, %struct.vsp1_dl_body* %84, i32 %85, i32 %86)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.vsp1_rwpf* @to_rwpf(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vsp1_wpf_write(%struct.vsp1_rwpf*, %struct.vsp1_dl_body*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
