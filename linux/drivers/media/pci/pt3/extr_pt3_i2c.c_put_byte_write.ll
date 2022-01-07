; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_i2c.c_put_byte_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_i2c.c_put_byte_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_i2cbuf = type { i32 }

@I_DATA_H_NOP = common dso_local global i32 0, align 4
@I_DATA_L_NOP = common dso_local global i32 0, align 4
@I_DATA_H_ACK0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt3_i2cbuf*, i32)* @put_byte_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_byte_write(%struct.pt3_i2cbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.pt3_i2cbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt3_i2cbuf* %0, %struct.pt3_i2cbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 128, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @I_DATA_H_NOP, align 4
  br label %19

17:                                               ; preds = %9
  %18 = load i32, i32* @I_DATA_L_NOP, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i32 @cmdbuf_add(%struct.pt3_i2cbuf* %10, i32 %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %3, align 8
  %27 = load i32, i32* @I_DATA_H_ACK0, align 4
  %28 = call i32 @cmdbuf_add(%struct.pt3_i2cbuf* %26, i32 %27)
  ret void
}

declare dso_local i32 @cmdbuf_add(%struct.pt3_i2cbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
