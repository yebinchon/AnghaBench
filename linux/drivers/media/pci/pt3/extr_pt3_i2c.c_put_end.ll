; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_i2c.c_put_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_i2c.c_put_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_i2cbuf = type { i32 }

@I_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt3_i2cbuf*)* @put_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_end(%struct.pt3_i2cbuf* %0) #0 {
  %2 = alloca %struct.pt3_i2cbuf*, align 8
  store %struct.pt3_i2cbuf* %0, %struct.pt3_i2cbuf** %2, align 8
  %3 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %2, align 8
  %4 = load i32, i32* @I_END, align 4
  %5 = call i32 @cmdbuf_add(%struct.pt3_i2cbuf* %3, i32 %4)
  %6 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %2, align 8
  %7 = getelementptr inbounds %struct.pt3_i2cbuf, %struct.pt3_i2cbuf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = srem i32 %8, 2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %2, align 8
  %13 = load i32, i32* @I_END, align 4
  %14 = call i32 @cmdbuf_add(%struct.pt3_i2cbuf* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @cmdbuf_add(%struct.pt3_i2cbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
