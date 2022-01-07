; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-dec/extr_ttusb_dec.c_ttusb_dec_init_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-dec/extr_ttusb_dec.c_ttusb_dec_init_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttusb_dec = type { i32, i32, i32 }

@ttusb_dec_process_urb_frame_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttusb_dec*)* @ttusb_dec_init_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttusb_dec_init_tasklet(%struct.ttusb_dec* %0) #0 {
  %2 = alloca %struct.ttusb_dec*, align 8
  store %struct.ttusb_dec* %0, %struct.ttusb_dec** %2, align 8
  %3 = load %struct.ttusb_dec*, %struct.ttusb_dec** %2, align 8
  %4 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %3, i32 0, i32 2
  %5 = call i32 @spin_lock_init(i32* %4)
  %6 = load %struct.ttusb_dec*, %struct.ttusb_dec** %2, align 8
  %7 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %6, i32 0, i32 1
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.ttusb_dec*, %struct.ttusb_dec** %2, align 8
  %10 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %9, i32 0, i32 0
  %11 = load i32, i32* @ttusb_dec_process_urb_frame_list, align 4
  %12 = load %struct.ttusb_dec*, %struct.ttusb_dec** %2, align 8
  %13 = ptrtoint %struct.ttusb_dec* %12 to i64
  %14 = call i32 @tasklet_init(i32* %10, i32 %11, i64 %13)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
