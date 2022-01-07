; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_irq_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_irq_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.stmfx = type { i32 }

@STMFX_REG_IRQ_SRC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @stmfx_irq_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmfx_irq_exit(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.stmfx*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.stmfx* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.stmfx* %6, %struct.stmfx** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @STMFX_REG_IRQ_SRC_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load %struct.stmfx*, %struct.stmfx** %3, align 8
  %13 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @irq_find_mapping(i32 %14, i32 %15)
  %17 = call i32 @irq_dispose_mapping(i32 %16)
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.stmfx*, %struct.stmfx** %3, align 8
  %23 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @irq_domain_remove(i32 %24)
  ret void
}

declare dso_local %struct.stmfx* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
