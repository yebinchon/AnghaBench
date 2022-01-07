; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-vp3054-i2c.c_vp3054_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-vp3054-i2c.c_vp3054_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.TYPE_2__*, %struct.vp3054_i2c_state* }
%struct.TYPE_2__ = type { i64 }
%struct.vp3054_i2c_state = type { i32 }

@CX88_BOARD_DNTV_LIVE_DVB_T_PRO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vp3054_i2c_remove(%struct.cx8802_dev* %0) #0 {
  %2 = alloca %struct.cx8802_dev*, align 8
  %3 = alloca %struct.vp3054_i2c_state*, align 8
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %2, align 8
  %4 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %4, i32 0, i32 1
  %6 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  store %struct.vp3054_i2c_state* %6, %struct.vp3054_i2c_state** %3, align 8
  %7 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %3, align 8
  %8 = icmp ne %struct.vp3054_i2c_state* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %11 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CX88_BOARD_DNTV_LIVE_DVB_T_PRO, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9, %1
  br label %24

18:                                               ; preds = %9
  %19 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %3, align 8
  %20 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %19, i32 0, i32 0
  %21 = call i32 @i2c_del_adapter(i32* %20)
  %22 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %3, align 8
  %23 = call i32 @kfree(%struct.vp3054_i2c_state* %22)
  br label %24

24:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.vp3054_i2c_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
