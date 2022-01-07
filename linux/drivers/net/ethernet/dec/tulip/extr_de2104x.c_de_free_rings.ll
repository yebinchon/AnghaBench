; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_free_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32*, i32*, i32, i32 }

@DE_RING_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*)* @de_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_free_rings(%struct.de_private* %0) #0 {
  %2 = alloca %struct.de_private*, align 8
  store %struct.de_private* %0, %struct.de_private** %2, align 8
  %3 = load %struct.de_private*, %struct.de_private** %2, align 8
  %4 = call i32 @de_clean_rings(%struct.de_private* %3)
  %5 = load %struct.de_private*, %struct.de_private** %2, align 8
  %6 = getelementptr inbounds %struct.de_private, %struct.de_private* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DE_RING_BYTES, align 4
  %9 = load %struct.de_private*, %struct.de_private** %2, align 8
  %10 = getelementptr inbounds %struct.de_private, %struct.de_private* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.de_private*, %struct.de_private** %2, align 8
  %13 = getelementptr inbounds %struct.de_private, %struct.de_private* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pci_free_consistent(i32 %7, i32 %8, i32* %11, i32 %14)
  %16 = load %struct.de_private*, %struct.de_private** %2, align 8
  %17 = getelementptr inbounds %struct.de_private, %struct.de_private* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.de_private*, %struct.de_private** %2, align 8
  %19 = getelementptr inbounds %struct.de_private, %struct.de_private* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local i32 @de_clean_rings(%struct.de_private*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
