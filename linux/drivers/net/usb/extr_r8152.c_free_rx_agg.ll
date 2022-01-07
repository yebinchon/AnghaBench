; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_free_rx_agg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_free_rx_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }
%struct.rx_agg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, %struct.rx_agg*)* @free_rx_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rx_agg(%struct.r8152* %0, %struct.rx_agg* %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca %struct.rx_agg*, align 8
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store %struct.rx_agg* %1, %struct.rx_agg** %4, align 8
  %5 = load %struct.rx_agg*, %struct.rx_agg** %4, align 8
  %6 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %5, i32 0, i32 2
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.rx_agg*, %struct.rx_agg** %4, align 8
  %9 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @usb_free_urb(i32 %10)
  %12 = load %struct.rx_agg*, %struct.rx_agg** %4, align 8
  %13 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @put_page(i32 %14)
  %16 = load %struct.rx_agg*, %struct.rx_agg** %4, align 8
  %17 = call i32 @kfree(%struct.rx_agg* %16)
  %18 = load %struct.r8152*, %struct.r8152** %3, align 8
  %19 = getelementptr inbounds %struct.r8152, %struct.r8152* %18, i32 0, i32 0
  %20 = call i32 @atomic_dec(i32* %19)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(%struct.rx_agg*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
