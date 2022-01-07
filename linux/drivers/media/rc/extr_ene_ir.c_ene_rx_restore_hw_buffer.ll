; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_rx_restore_hw_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_rx_restore_hw_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i32, i32, i32, i32, i32 }

@ENE_FW_SAMPLE_BUFFER = common dso_local global i64 0, align 8
@ENE_FW1 = common dso_local global i32 0, align 4
@ENE_FW1_EXTRA_BUF_HND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_rx_restore_hw_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_rx_restore_hw_buffer(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %3 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %4 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %59

8:                                                ; preds = %1
  %9 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %10 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %11 = add nsw i64 %10, 0
  %12 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %13 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 255
  %16 = call i32 @ene_write_reg(%struct.ene_device* %9, i64 %11, i32 %15)
  %17 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %18 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %19 = add nsw i64 %18, 1
  %20 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %21 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = call i32 @ene_write_reg(%struct.ene_device* %17, i64 %19, i32 %23)
  %25 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %26 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %27 = add nsw i64 %26, 2
  %28 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %29 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ene_write_reg(%struct.ene_device* %25, i64 %27, i32 %30)
  %32 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %33 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %34 = add nsw i64 %33, 3
  %35 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %36 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = call i32 @ene_write_reg(%struct.ene_device* %32, i64 %34, i32 %38)
  %40 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %41 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %42 = add nsw i64 %41, 4
  %43 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %44 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 8
  %47 = call i32 @ene_write_reg(%struct.ene_device* %40, i64 %42, i32 %46)
  %48 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %49 = load i64, i64* @ENE_FW_SAMPLE_BUFFER, align 8
  %50 = add nsw i64 %49, 5
  %51 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %52 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ene_write_reg(%struct.ene_device* %48, i64 %50, i32 %53)
  %55 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %56 = load i32, i32* @ENE_FW1, align 4
  %57 = load i32, i32* @ENE_FW1_EXTRA_BUF_HND, align 4
  %58 = call i32 @ene_clear_reg_mask(%struct.ene_device* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @ene_write_reg(%struct.ene_device*, i64, i32) #1

declare dso_local i32 @ene_clear_reg_mask(%struct.ene_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
