; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_i2c.c_put_byte_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_i2c.c_put_byte_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_i2cbuf = type { i32 }

@I_DATA_H_READ = common dso_local global i32 0, align 4
@I_DATA_H_NOP = common dso_local global i32 0, align 4
@I_DATA_L_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt3_i2cbuf*, i32)* @put_byte_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_byte_read(%struct.pt3_i2cbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.pt3_i2cbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt3_i2cbuf* %0, %struct.pt3_i2cbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %19, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %3, align 8
  %17 = load i32, i32* @I_DATA_H_READ, align 4
  %18 = call i32 @cmdbuf_add(%struct.pt3_i2cbuf* %16, i32 %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @I_DATA_H_NOP, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @I_DATA_L_NOP, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @cmdbuf_add(%struct.pt3_i2cbuf* %23, i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %7

38:                                               ; preds = %7
  ret void
}

declare dso_local i32 @cmdbuf_add(%struct.pt3_i2cbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
