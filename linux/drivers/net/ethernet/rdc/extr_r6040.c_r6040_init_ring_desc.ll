; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_init_ring_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_init_ring_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r6040_descriptor = type { %struct.r6040_descriptor*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r6040_descriptor*, i32, i32)* @r6040_init_ring_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r6040_init_ring_desc(%struct.r6040_descriptor* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.r6040_descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r6040_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.r6040_descriptor* %0, %struct.r6040_descriptor** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %4, align 8
  store %struct.r6040_descriptor* %9, %struct.r6040_descriptor** %7, align 8
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %15, %3
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 16
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %7, align 8
  %23 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %7, align 8
  %25 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %24, i64 1
  %26 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %7, align 8
  %27 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %26, i32 0, i32 0
  store %struct.r6040_descriptor* %25, %struct.r6040_descriptor** %27, align 8
  %28 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %7, align 8
  %29 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %28, i32 1
  store %struct.r6040_descriptor* %29, %struct.r6040_descriptor** %7, align 8
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %7, align 8
  %32 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %31, i32 -1
  store %struct.r6040_descriptor* %32, %struct.r6040_descriptor** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %7, align 8
  %36 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %4, align 8
  %38 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %7, align 8
  %39 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %38, i32 0, i32 0
  store %struct.r6040_descriptor* %37, %struct.r6040_descriptor** %39, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
