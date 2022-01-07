; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_hexium_orion.c_hexium_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_hexium_orion.c_hexium_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64 }
%struct.hexium = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@hexium_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @hexium_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexium_detach(%struct.saa7146_dev* %0) #0 {
  %2 = alloca %struct.saa7146_dev*, align 8
  %3 = alloca %struct.hexium*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %2, align 8
  %4 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %5 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.hexium*
  store %struct.hexium* %7, %struct.hexium** %3, align 8
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %9 = call i32 @DEB_EE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %8)
  %10 = load %struct.hexium*, %struct.hexium** %3, align 8
  %11 = getelementptr inbounds %struct.hexium, %struct.hexium* %10, i32 0, i32 1
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %13 = call i32 @saa7146_unregister_device(i32* %11, %struct.saa7146_dev* %12)
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %15 = call i32 @saa7146_vv_release(%struct.saa7146_dev* %14)
  %16 = load i32, i32* @hexium_num, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @hexium_num, align 4
  %18 = load %struct.hexium*, %struct.hexium** %3, align 8
  %19 = getelementptr inbounds %struct.hexium, %struct.hexium* %18, i32 0, i32 0
  %20 = call i32 @i2c_del_adapter(i32* %19)
  %21 = load %struct.hexium*, %struct.hexium** %3, align 8
  %22 = call i32 @kfree(%struct.hexium* %21)
  ret i32 0
}

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_unregister_device(i32*, %struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_vv_release(%struct.saa7146_dev*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.hexium*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
