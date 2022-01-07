; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_test_interface_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_test_interface_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ca8210_priv = type { %struct.TYPE_2__*, %struct.ca8210_test }
%struct.TYPE_2__ = type { i32 }
%struct.ca8210_test = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Test interface removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ca8210_priv*)* @ca8210_test_interface_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca8210_test_interface_clear(%struct.ca8210_priv* %0) #0 {
  %2 = alloca %struct.ca8210_priv*, align 8
  %3 = alloca %struct.ca8210_test*, align 8
  store %struct.ca8210_priv* %0, %struct.ca8210_priv** %2, align 8
  %4 = load %struct.ca8210_priv*, %struct.ca8210_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %4, i32 0, i32 1
  store %struct.ca8210_test* %5, %struct.ca8210_test** %3, align 8
  %6 = load %struct.ca8210_test*, %struct.ca8210_test** %3, align 8
  %7 = getelementptr inbounds %struct.ca8210_test, %struct.ca8210_test* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @debugfs_remove(i32 %8)
  %10 = load %struct.ca8210_test*, %struct.ca8210_test** %3, align 8
  %11 = getelementptr inbounds %struct.ca8210_test, %struct.ca8210_test* %10, i32 0, i32 0
  %12 = call i32 @kfifo_free(i32* %11)
  %13 = load %struct.ca8210_priv*, %struct.ca8210_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_info(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
