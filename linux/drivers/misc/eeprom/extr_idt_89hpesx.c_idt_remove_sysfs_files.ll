; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_remove_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_remove_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_89hpesx_dev*)* @idt_remove_sysfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_remove_sysfs_files(%struct.idt_89hpesx_dev* %0) #0 {
  %2 = alloca %struct.idt_89hpesx_dev*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %2, align 8
  %4 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %2, align 8
  %5 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %2, align 8
  %9 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %2, align 8
  %17 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @sysfs_remove_bin_file(i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
