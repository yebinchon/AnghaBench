; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mac-scc.c_do_pd_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mac-scc.c_do_pd_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_enet_private = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_enet_private*)* @do_pd_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pd_setup(%struct.fs_enet_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_enet_private*, align 8
  %4 = alloca %struct.platform_device*, align 8
  store %struct.fs_enet_private* %0, %struct.fs_enet_private** %3, align 8
  %5 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %6 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.platform_device* @to_platform_device(i32 %7)
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @irq_of_parse_and_map(i32 %12, i32 0)
  %14 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %15 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %17 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %63

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @of_iomap(i32 %27, i32 0)
  %29 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %30 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %33 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %63

40:                                               ; preds = %23
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @of_iomap(i32 %44, i32 1)
  %46 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %47 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %50 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %40
  %55 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %56 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @iounmap(i8* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %54, %37, %20
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i8* @of_iomap(i32, i32) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
