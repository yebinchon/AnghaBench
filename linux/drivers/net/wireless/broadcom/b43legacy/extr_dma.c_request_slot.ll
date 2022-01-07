; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_request_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_request_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_dmaring*)* @request_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_slot(%struct.b43legacy_dmaring* %0) #0 {
  %2 = alloca %struct.b43legacy_dmaring*, align 8
  %3 = alloca i32, align 4
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %2, align 8
  %4 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %5 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @B43legacy_WARN_ON(i32 %9)
  %11 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %12 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @B43legacy_WARN_ON(i32 %13)
  %15 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %16 = call i64 @free_slots(%struct.b43legacy_dmaring* %15)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @B43legacy_WARN_ON(i32 %18)
  %20 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %21 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %22 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @next_slot(%struct.b43legacy_dmaring* %20, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %27 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %29 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %33 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %34 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @update_max_used_slots(%struct.b43legacy_dmaring* %32, i32 %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i64 @free_slots(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @next_slot(%struct.b43legacy_dmaring*, i32) #1

declare dso_local i32 @update_max_used_slots(%struct.b43legacy_dmaring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
