; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_put_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_put_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32, %struct.hnae_ae_dev*, i32* }
%struct.hnae_ae_dev = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hnae_put_handle(%struct.hnae_handle* %0) #0 {
  %2 = alloca %struct.hnae_handle*, align 8
  %3 = alloca %struct.hnae_ae_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.hnae_handle* %0, %struct.hnae_handle** %2, align 8
  %5 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %6 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %5, i32 0, i32 2
  %7 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %6, align 8
  store %struct.hnae_ae_dev* %7, %struct.hnae_ae_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %11 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %16 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hnae_fini_queue(i32 %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %28 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %27, i32 0, i32 2
  %29 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %28, align 8
  %30 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %32, align 8
  %34 = icmp ne i32 (%struct.hnae_handle*)* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %37 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %36, i32 0, i32 2
  %38 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %37, align 8
  %39 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %41, align 8
  %43 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %44 = call i32 %42(%struct.hnae_handle* %43)
  br label %45

45:                                               ; preds = %35, %26
  %46 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %46, i32 0, i32 3
  %48 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %49 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %48, i32 0, i32 1
  %50 = call i32 @hnae_list_del(i32* %47, i32* %49)
  %51 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %3, align 8
  %52 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %54, align 8
  %56 = icmp ne i32 (%struct.hnae_handle*)* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %45
  %58 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %3, align 8
  %59 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %61, align 8
  %63 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %64 = call i32 %62(%struct.hnae_handle* %63)
  br label %65

65:                                               ; preds = %57, %45
  %66 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %3, align 8
  %67 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @module_put(i32 %68)
  %70 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %3, align 8
  %71 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %70, i32 0, i32 0
  %72 = call i32 @put_device(i32* %71)
  ret void
}

declare dso_local i32 @hnae_fini_queue(i32) #1

declare dso_local i32 @hnae_list_del(i32*, i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
