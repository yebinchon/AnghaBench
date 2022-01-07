; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_get_flash_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_get_flash_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i32, i32*, i8**, i8* }

@WL3501_BSS_FPAGE3 = common dso_local global i32 0, align 4
@WL3501_NIC_BSS = common dso_local global i64 0, align 8
@WL3501_NIC_LMAL = common dso_local global i64 0, align 8
@WL3501_NIC_LMAH = common dso_local global i64 0, align 8
@WL3501_NIC_IODPA = common dso_local global i64 0, align 8
@WL3501_BSS_FPAGE0 = common dso_local global i32 0, align 4
@WL3501_BSS_SPAGE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl3501_card*)* @wl3501_get_flash_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_get_flash_mac_addr(%struct.wl3501_card* %0) #0 {
  %2 = alloca %struct.wl3501_card*, align 8
  %3 = alloca i32, align 4
  store %struct.wl3501_card* %0, %struct.wl3501_card** %2, align 8
  %4 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %5 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @WL3501_BSS_FPAGE3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* @WL3501_NIC_BSS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @wl3501_outb(i32 %7, i64 %11)
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @WL3501_NIC_LMAL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @wl3501_outb(i32 0, i64 %16)
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @WL3501_NIC_LMAH, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @wl3501_outb(i32 64, i64 %21)
  %23 = call i32 @WL3501_NOPLOOP(i32 100)
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @WL3501_NIC_IODPA, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i8* @inb(i64 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %31 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = call i32 @WL3501_NOPLOOP(i32 100)
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @WL3501_NIC_IODPA, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i8* @inb(i64 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %42 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  %45 = call i32 @WL3501_NOPLOOP(i32 100)
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @WL3501_NIC_IODPA, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i8* @inb(i64 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %53 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %51, i32* %55, align 4
  %56 = call i32 @WL3501_NOPLOOP(i32 100)
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @WL3501_NIC_IODPA, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i8* @inb(i64 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %64 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %62, i32* %66, align 4
  %67 = call i32 @WL3501_NOPLOOP(i32 100)
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @WL3501_NIC_IODPA, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i8* @inb(i64 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %75 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32 %73, i32* %77, align 4
  %78 = call i32 @WL3501_NOPLOOP(i32 100)
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @WL3501_NIC_IODPA, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i8* @inb(i64 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %86 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  store i32 %84, i32* %88, align 4
  %89 = call i32 @WL3501_NOPLOOP(i32 100)
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* @WL3501_NIC_IODPA, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i8* @inb(i64 %93)
  %95 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %96 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = call i32 @WL3501_NOPLOOP(i32 100)
  %98 = load i32, i32* @WL3501_BSS_FPAGE0, align 4
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @WL3501_NIC_BSS, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @wl3501_outb(i32 %98, i64 %102)
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* @WL3501_NIC_LMAL, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @wl3501_outb(i32 4, i64 %107)
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* @WL3501_NIC_LMAH, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @wl3501_outb(i32 64, i64 %112)
  %114 = call i32 @WL3501_NOPLOOP(i32 100)
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @WL3501_NIC_IODPA, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i8* @inb(i64 %118)
  %120 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %121 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %120, i32 0, i32 2
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  store i8* %119, i8** %123, align 8
  %124 = call i32 @WL3501_NOPLOOP(i32 100)
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* @WL3501_NIC_IODPA, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i8* @inb(i64 %128)
  %130 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %131 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %130, i32 0, i32 2
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  store i8* %129, i8** %133, align 8
  %134 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %135 = load i32, i32* @WL3501_BSS_SPAGE0, align 4
  %136 = call i32 @wl3501_switch_page(%struct.wl3501_card* %134, i32 %135)
  %137 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %138 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %1
  %144 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %145 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 96
  br label %150

150:                                              ; preds = %143, %1
  %151 = phi i1 [ false, %1 ], [ %149, %143 ]
  %152 = zext i1 %151 to i32
  ret i32 %152
}

declare dso_local i32 @wl3501_outb(i32, i64) #1

declare dso_local i32 @WL3501_NOPLOOP(i32) #1

declare dso_local i8* @inb(i64) #1

declare dso_local i32 @wl3501_switch_page(%struct.wl3501_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
