; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_test_interface_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_test_interface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ca8210_priv = type { %struct.TYPE_4__*, %struct.ca8210_test }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ca8210_test = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ca8210@%d_%d\00", align 1
@test_int_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ca8210\00", align 1
@CA8210_TEST_INT_FIFO_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ca8210_priv*)* @ca8210_test_interface_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_test_interface_init(%struct.ca8210_priv* %0) #0 {
  %2 = alloca %struct.ca8210_priv*, align 8
  %3 = alloca %struct.ca8210_test*, align 8
  %4 = alloca [32 x i8], align 16
  store %struct.ca8210_priv* %0, %struct.ca8210_priv** %2, align 8
  %5 = load %struct.ca8210_priv*, %struct.ca8210_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %5, i32 0, i32 1
  store %struct.ca8210_test* %6, %struct.ca8210_test** %3, align 8
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %8 = load %struct.ca8210_priv*, %struct.ca8210_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ca8210_priv*, %struct.ca8210_priv** %2, align 8
  %16 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snprintf(i8* %7, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %22 = load %struct.ca8210_priv*, %struct.ca8210_priv** %2, align 8
  %23 = call i32 @debugfs_create_file(i8* %21, i32 384, i32* null, %struct.ca8210_priv* %22, i32* @test_int_fops)
  %24 = load %struct.ca8210_test*, %struct.ca8210_test** %3, align 8
  %25 = getelementptr inbounds %struct.ca8210_test, %struct.ca8210_test* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %27 = call i32 @debugfs_create_symlink(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* %26)
  %28 = load %struct.ca8210_test*, %struct.ca8210_test** %3, align 8
  %29 = getelementptr inbounds %struct.ca8210_test, %struct.ca8210_test* %28, i32 0, i32 1
  %30 = call i32 @init_waitqueue_head(i32* %29)
  %31 = load %struct.ca8210_test*, %struct.ca8210_test** %3, align 8
  %32 = getelementptr inbounds %struct.ca8210_test, %struct.ca8210_test* %31, i32 0, i32 0
  %33 = load i32, i32* @CA8210_TEST_INT_FIFO_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @kfifo_alloc(i32* %32, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32*, %struct.ca8210_priv*, i32*) #1

declare dso_local i32 @debugfs_create_symlink(i8*, i32*, i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
