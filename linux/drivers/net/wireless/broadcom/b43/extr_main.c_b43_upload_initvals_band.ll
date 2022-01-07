; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_upload_initvals_band.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_upload_initvals_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_firmware }
%struct.b43_firmware = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.b43_fw_header = type { i32 }
%struct.b43_iv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_upload_initvals_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_upload_initvals_band(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.b43_fw_header*, align 8
  %6 = alloca %struct.b43_firmware*, align 8
  %7 = alloca %struct.b43_iv*, align 8
  %8 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i64 4, i64* %4, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  store %struct.b43_firmware* %10, %struct.b43_firmware** %6, align 8
  %11 = load %struct.b43_firmware*, %struct.b43_firmware** %6, align 8
  %12 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.b43_firmware*, %struct.b43_firmware** %6, align 8
  %19 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.b43_fw_header*
  store %struct.b43_fw_header* %24, %struct.b43_fw_header** %5, align 8
  %25 = load %struct.b43_firmware*, %struct.b43_firmware** %6, align 8
  %26 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 4
  %32 = inttoptr i64 %31 to %struct.b43_iv*
  store %struct.b43_iv* %32, %struct.b43_iv** %7, align 8
  %33 = load %struct.b43_fw_header*, %struct.b43_fw_header** %5, align 8
  %34 = getelementptr inbounds %struct.b43_fw_header, %struct.b43_fw_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be32_to_cpu(i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = load %struct.b43_iv*, %struct.b43_iv** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.b43_firmware*, %struct.b43_firmware** %6, align 8
  %41 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, 4
  %47 = call i32 @b43_write_initvals(%struct.b43_wldev* %37, %struct.b43_iv* %38, i64 %39, i64 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %17, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @b43_write_initvals(%struct.b43_wldev*, %struct.b43_iv*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
