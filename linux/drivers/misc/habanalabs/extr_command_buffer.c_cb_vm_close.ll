; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_cb_vm_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_cb_vm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32* }
%struct.hl_cb = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @cb_vm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_vm_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.hl_cb*, align 8
  %4 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to %struct.hl_cb*
  store %struct.hl_cb* %8, %struct.hl_cb** %3, align 8
  %9 = load %struct.hl_cb*, %struct.hl_cb** %3, align 8
  %10 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = sub nsw i64 %11, %18
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.hl_cb*, %struct.hl_cb** %3, align 8
  %25 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %39

26:                                               ; preds = %1
  %27 = load %struct.hl_cb*, %struct.hl_cb** %3, align 8
  %28 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %27, i32 0, i32 2
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.hl_cb*, %struct.hl_cb** %3, align 8
  %31 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  %32 = load %struct.hl_cb*, %struct.hl_cb** %3, align 8
  %33 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %32, i32 0, i32 2
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.hl_cb*, %struct.hl_cb** %3, align 8
  %36 = call i32 @hl_cb_put(%struct.hl_cb* %35)
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hl_cb_put(%struct.hl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
