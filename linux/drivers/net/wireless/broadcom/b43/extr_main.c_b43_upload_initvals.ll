; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_upload_initvals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_upload_initvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_firmware }
%struct.b43_firmware = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.b43_fw_header = type { i32 }
%struct.b43_iv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_upload_initvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_upload_initvals(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.b43_fw_header*, align 8
  %5 = alloca %struct.b43_firmware*, align 8
  %6 = alloca %struct.b43_iv*, align 8
  %7 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i64 4, i64* %3, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  store %struct.b43_firmware* %9, %struct.b43_firmware** %5, align 8
  %10 = load %struct.b43_firmware*, %struct.b43_firmware** %5, align 8
  %11 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.b43_fw_header*
  store %struct.b43_fw_header* %16, %struct.b43_fw_header** %4, align 8
  %17 = load %struct.b43_firmware*, %struct.b43_firmware** %5, align 8
  %18 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 4
  %24 = inttoptr i64 %23 to %struct.b43_iv*
  store %struct.b43_iv* %24, %struct.b43_iv** %6, align 8
  %25 = load %struct.b43_fw_header*, %struct.b43_fw_header** %4, align 8
  %26 = getelementptr inbounds %struct.b43_fw_header, %struct.b43_fw_header* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @be32_to_cpu(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = load %struct.b43_iv*, %struct.b43_iv** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.b43_firmware*, %struct.b43_firmware** %5, align 8
  %33 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, 4
  %39 = call i32 @b43_write_initvals(%struct.b43_wldev* %29, %struct.b43_iv* %30, i64 %31, i64 %38)
  ret i32 %39
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @b43_write_initvals(%struct.b43_wldev*, %struct.b43_iv*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
