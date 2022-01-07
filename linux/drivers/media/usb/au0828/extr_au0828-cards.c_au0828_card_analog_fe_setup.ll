; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-cards.c_au0828_card_analog_fe_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-cards.c_au0828_card_analog_fe_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i64 }

@AU0828_VMUX_UNDEFINED = common dso_local global i64 0, align 8
@TUNER_ABSENT = common dso_local global i64 0, align 8
@T_ANALOG_TV = common dso_local global i32 0, align 4
@au0828_tuner_callback = common dso_local global i32 0, align 4
@s_type_addr = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au0828_card_analog_fe_setup(%struct.au0828_dev* %0) #0 {
  %2 = alloca %struct.au0828_dev*, align 8
  store %struct.au0828_dev* %0, %struct.au0828_dev** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
