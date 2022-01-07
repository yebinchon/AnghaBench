; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0011.c_fc0011_vcocal_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0011.c_fc0011_vcocal_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc0011_priv = type { i32 }

@FC11_REG_VCOCAL = common dso_local global i32 0, align 4
@FC11_VCOCAL_RESET = common dso_local global i32 0, align 4
@FC11_VCOCAL_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc0011_priv*)* @fc0011_vcocal_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc0011_vcocal_trigger(%struct.fc0011_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc0011_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.fc0011_priv* %0, %struct.fc0011_priv** %3, align 8
  %5 = load %struct.fc0011_priv*, %struct.fc0011_priv** %3, align 8
  %6 = load i32, i32* @FC11_REG_VCOCAL, align 4
  %7 = load i32, i32* @FC11_VCOCAL_RESET, align 4
  %8 = call i32 @fc0011_writereg(%struct.fc0011_priv* %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.fc0011_priv*, %struct.fc0011_priv** %3, align 8
  %15 = load i32, i32* @FC11_REG_VCOCAL, align 4
  %16 = load i32, i32* @FC11_VCOCAL_RUN, align 4
  %17 = call i32 @fc0011_writereg(%struct.fc0011_priv* %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @fc0011_writereg(%struct.fc0011_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
