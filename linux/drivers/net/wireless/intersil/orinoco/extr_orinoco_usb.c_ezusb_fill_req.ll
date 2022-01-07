; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_fill_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_fill_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ezusb_packet = type { i32, i8*, i8*, i8*, i8*, i8*, i64, i32, i8* }

@BULK_BUF_SIZE = common dso_local global i32 0, align 4
@EZUSB_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ezusb_packet*, i32, i32, i8*, i32, i32)* @ezusb_fill_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezusb_fill_req(%struct.ezusb_packet* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ezusb_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ezusb_packet* %0, %struct.ezusb_packet** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 72, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @BULK_BUF_SIZE, align 4
  %20 = icmp sgt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* @EZUSB_MAGIC, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.ezusb_packet*, %struct.ezusb_packet** %7, align 8
  %26 = getelementptr inbounds %struct.ezusb_packet, %struct.ezusb_packet* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.ezusb_packet*, %struct.ezusb_packet** %7, align 8
  %29 = getelementptr inbounds %struct.ezusb_packet, %struct.ezusb_packet* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ezusb_packet*, %struct.ezusb_packet** %7, align 8
  %31 = getelementptr inbounds %struct.ezusb_packet, %struct.ezusb_packet* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.ezusb_packet*, %struct.ezusb_packet** %7, align 8
  %35 = getelementptr inbounds %struct.ezusb_packet, %struct.ezusb_packet* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.ezusb_packet*, %struct.ezusb_packet** %7, align 8
  %40 = getelementptr inbounds %struct.ezusb_packet, %struct.ezusb_packet* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ezusb_packet*, %struct.ezusb_packet** %7, align 8
  %42 = call i32 @build_crc(%struct.ezusb_packet* %41)
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.ezusb_packet*, %struct.ezusb_packet** %7, align 8
  %45 = getelementptr inbounds %struct.ezusb_packet, %struct.ezusb_packet* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @HERMES_BYTES_TO_RECLEN(i32 %46)
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.ezusb_packet*, %struct.ezusb_packet** %7, align 8
  %50 = getelementptr inbounds %struct.ezusb_packet, %struct.ezusb_packet* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.ezusb_packet*, %struct.ezusb_packet** %7, align 8
  %54 = getelementptr inbounds %struct.ezusb_packet, %struct.ezusb_packet* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %6
  %58 = load %struct.ezusb_packet*, %struct.ezusb_packet** %7, align 8
  %59 = getelementptr inbounds %struct.ezusb_packet, %struct.ezusb_packet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @memcpy(i32 %60, i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %6
  %65 = load i32, i32* %13, align 4
  ret i32 %65
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @build_crc(%struct.ezusb_packet*) #1

declare dso_local i32 @HERMES_BYTES_TO_RECLEN(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
