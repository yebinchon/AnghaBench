; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_cleanup_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_cleanup_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32 }
%struct.pt1_buffer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt1*, %struct.pt1_buffer*)* @pt1_cleanup_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt1_cleanup_buffer(%struct.pt1* %0, %struct.pt1_buffer* %1) #0 {
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca %struct.pt1_buffer*, align 8
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  store %struct.pt1_buffer* %1, %struct.pt1_buffer** %4, align 8
  %5 = load %struct.pt1*, %struct.pt1** %3, align 8
  %6 = load %struct.pt1_buffer*, %struct.pt1_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.pt1_buffer, %struct.pt1_buffer* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.pt1_buffer*, %struct.pt1_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.pt1_buffer, %struct.pt1_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pt1_free_page(%struct.pt1* %5, i32 %8, i32 %11)
  ret void
}

declare dso_local i32 @pt1_free_page(%struct.pt1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
