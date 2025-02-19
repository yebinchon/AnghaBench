; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_set_reg_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_set_reg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i64 }

@ENE_ADDR_HI = common dso_local global i64 0, align 8
@ENE_ADDR_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*, i32)* @ene_set_reg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_set_reg_addr(%struct.ene_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ene_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 8
  %7 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %8 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ENE_ADDR_HI, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @outb(i32 %6, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 255
  %15 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %16 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ENE_ADDR_LO, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb(i32 %14, i64 %19)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
