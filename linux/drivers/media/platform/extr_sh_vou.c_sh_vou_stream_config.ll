; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_stream_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_stream_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_vou_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VOUSWR = common dso_local global i32 0, align 4
@VOUAIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_vou_device*)* @sh_vou_stream_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_vou_stream_config(%struct.sh_vou_device* %0) #0 {
  %2 = alloca %struct.sh_vou_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sh_vou_device* %0, %struct.sh_vou_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.sh_vou_device*, %struct.sh_vou_device** %2, align 8
  %6 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %9 [
    i32 132, label %10
    i32 131, label %10
    i32 129, label %11
    i32 128, label %14
    i32 130, label %15
  ]

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %1, %9
  store i32 1, i32* %3, align 4
  br label %16

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = xor i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %1, %11
  store i32 2, i32* %3, align 4
  br label %16

15:                                               ; preds = %1
  store i32 3, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %14, %10
  %17 = load %struct.sh_vou_device*, %struct.sh_vou_device** %2, align 8
  %18 = load i32, i32* @VOUSWR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sh_vou_reg_a_write(%struct.sh_vou_device* %17, i32 %18, i32 %19)
  %21 = load %struct.sh_vou_device*, %struct.sh_vou_device** %2, align 8
  %22 = load i32, i32* @VOUAIR, align 4
  %23 = load %struct.sh_vou_device*, %struct.sh_vou_device** %2, align 8
  %24 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = mul i32 %26, %27
  %29 = call i32 @sh_vou_reg_ab_write(%struct.sh_vou_device* %21, i32 %22, i32 %28)
  ret void
}

declare dso_local i32 @sh_vou_reg_a_write(%struct.sh_vou_device*, i32, i32) #1

declare dso_local i32 @sh_vou_reg_ab_write(%struct.sh_vou_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
