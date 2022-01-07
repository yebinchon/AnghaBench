; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_pegasus.c_setup_pegasus_II.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_pegasus.c_setup_pegasus_II.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@Reg1d = common dso_local global i32 0, align 4
@Reg7b = common dso_local global i32 0, align 4
@HAS_HOME_PNA = common dso_local global i32 0, align 4
@mii_mode = common dso_local global i64 0, align 8
@Reg81 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @setup_pegasus_II to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_pegasus_II(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 165, i32* %3, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = load i32, i32* @Reg1d, align 4
  %6 = call i32 @set_register(%struct.TYPE_5__* %4, i32 %5, i32 0)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load i32, i32* @Reg7b, align 4
  %9 = call i32 @set_register(%struct.TYPE_5__* %7, i32 %8, i32 1)
  %10 = call i32 @msleep(i32 100)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HAS_HOME_PNA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i64, i64* @mii_mode, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = load i32, i32* @Reg7b, align 4
  %23 = call i32 @set_register(%struct.TYPE_5__* %21, i32 %22, i32 0)
  br label %28

24:                                               ; preds = %17, %1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = load i32, i32* @Reg7b, align 4
  %27 = call i32 @set_register(%struct.TYPE_5__* %25, i32 %26, i32 2)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @set_register(%struct.TYPE_5__* %29, i32 131, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = call i32 @get_registers(%struct.TYPE_5__* %32, i32 131, i32 1, i32* %3)
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 165
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 34067, i32* %38, align 4
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = call i32 @set_register(%struct.TYPE_5__* %43, i32 128, i32 192)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = call i32 @set_register(%struct.TYPE_5__* %45, i32 131, i32 255)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = call i32 @set_register(%struct.TYPE_5__* %47, i32 132, i32 1)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HAS_HOME_PNA, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load i64, i64* @mii_mode, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = load i32, i32* @Reg81, align 4
  %61 = call i32 @set_register(%struct.TYPE_5__* %59, i32 %60, i32 6)
  br label %66

62:                                               ; preds = %55, %42
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = load i32, i32* @Reg81, align 4
  %65 = call i32 @set_register(%struct.TYPE_5__* %63, i32 %64, i32 2)
  br label %66

66:                                               ; preds = %62, %58
  ret void
}

declare dso_local i32 @set_register(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @get_registers(%struct.TYPE_5__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
