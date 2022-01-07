; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_geo.c_libipw_set_geo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_geo.c_libipw_set_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i8*, i8* }
%struct.libipw_geo = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libipw_set_geo(%struct.libipw_device* %0, %struct.libipw_geo* %1) #0 {
  %3 = alloca %struct.libipw_device*, align 8
  %4 = alloca %struct.libipw_geo*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %3, align 8
  store %struct.libipw_geo* %1, %struct.libipw_geo** %4, align 8
  %5 = load %struct.libipw_device*, %struct.libipw_device** %3, align 8
  %6 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %10 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @memcpy(i8* %8, i32 %11, i32 3)
  %13 = load %struct.libipw_device*, %struct.libipw_device** %3, align 8
  %14 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 3
  store i8 0, i8* %17, align 1
  %18 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %19 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.libipw_device*, %struct.libipw_device** %3, align 8
  %22 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %25 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.libipw_device*, %struct.libipw_device** %3, align 8
  %28 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load %struct.libipw_device*, %struct.libipw_device** %3, align 8
  %31 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %35 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %38 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i8* %33, i32 %36, i32 %42)
  %44 = load %struct.libipw_device*, %struct.libipw_device** %3, align 8
  %45 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %49 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.libipw_device*, %struct.libipw_device** %3, align 8
  %52 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memcpy(i8* %47, i32 %50, i32 %57)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
