; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_fbpt_entry_init_dummy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_fbpt_entry_init_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cio2_device = type { i32 }
%struct.cio2_fbpt_entry = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@CIO2_MAX_LOPS = common dso_local global i32 0, align 4
@CIO2_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cio2_device*, %struct.cio2_fbpt_entry*)* @cio2_fbpt_entry_init_dummy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cio2_fbpt_entry_init_dummy(%struct.cio2_device* %0, %struct.cio2_fbpt_entry* %1) #0 {
  %3 = alloca %struct.cio2_device*, align 8
  %4 = alloca %struct.cio2_fbpt_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.cio2_device* %0, %struct.cio2_device** %3, align 8
  store %struct.cio2_fbpt_entry* %1, %struct.cio2_fbpt_entry** %4, align 8
  %6 = load i32, i32* @CIO2_MAX_LOPS, align 4
  %7 = zext i32 %6 to i64
  %8 = load %struct.cio2_fbpt_entry*, %struct.cio2_fbpt_entry** %4, align 8
  %9 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %8, i64 0
  %10 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @CIO2_PAGE_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = load i32, i32* @CIO2_MAX_LOPS, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = load %struct.cio2_fbpt_entry*, %struct.cio2_fbpt_entry** %4, align 8
  %20 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %19, i64 1
  %21 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @CIO2_PAGE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.cio2_fbpt_entry*, %struct.cio2_fbpt_entry** %4, align 8
  %26 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %25, i64 1
  %27 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %44, %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CIO2_MAX_LOPS, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %35 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load %struct.cio2_fbpt_entry*, %struct.cio2_fbpt_entry** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %39, i64 %41
  %43 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 8
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %49 = load %struct.cio2_fbpt_entry*, %struct.cio2_fbpt_entry** %4, align 8
  %50 = call i32 @cio2_fbpt_entry_enable(%struct.cio2_device* %48, %struct.cio2_fbpt_entry* %49)
  ret void
}

declare dso_local i32 @cio2_fbpt_entry_enable(%struct.cio2_device*, %struct.cio2_fbpt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
