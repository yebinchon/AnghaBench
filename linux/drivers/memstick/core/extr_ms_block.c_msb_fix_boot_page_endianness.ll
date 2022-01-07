; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_fix_boot_page_endianness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_fix_boot_page_endianness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ms_boot_page = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ms_boot_page*)* @msb_fix_boot_page_endianness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msb_fix_boot_page_endianness(%struct.ms_boot_page* %0) #0 {
  %2 = alloca %struct.ms_boot_page*, align 8
  store %struct.ms_boot_page* %0, %struct.ms_boot_page** %2, align 8
  %3 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %4 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* @be16_to_cpu(i8* %6)
  %8 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %9 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i8* %7, i8** %10, align 8
  %11 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %12 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @be16_to_cpu(i8* %14)
  %16 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %17 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %20 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @be32_to_cpu(i8* %23)
  %25 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %26 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i8* %24, i8** %28, align 8
  %29 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %30 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @be32_to_cpu(i8* %33)
  %35 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %36 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i8* %34, i8** %38, align 8
  %39 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %40 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @be32_to_cpu(i8* %43)
  %45 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %46 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  %49 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %50 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @be32_to_cpu(i8* %53)
  %55 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %56 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i8* %54, i8** %58, align 8
  %59 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %60 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @be16_to_cpu(i8* %62)
  %64 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %65 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 8
  store i8* %63, i8** %66, align 8
  %67 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %68 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 7
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @be16_to_cpu(i8* %70)
  %72 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %73 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 7
  store i8* %71, i8** %74, align 8
  %75 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %76 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 6
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @be16_to_cpu(i8* %78)
  %80 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %81 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 6
  store i8* %79, i8** %82, align 8
  %83 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %84 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @be16_to_cpu(i8* %86)
  %88 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %89 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 5
  store i8* %87, i8** %90, align 8
  %91 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %92 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @be16_to_cpu(i8* %94)
  %96 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %97 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 4
  store i8* %95, i8** %98, align 8
  %99 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %100 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @be16_to_cpu(i8* %102)
  %104 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %105 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  store i8* %103, i8** %106, align 8
  %107 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %108 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @be16_to_cpu(i8* %110)
  %112 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %113 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  store i8* %111, i8** %114, align 8
  %115 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %116 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @be16_to_cpu(i8* %118)
  %120 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %121 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i8* %119, i8** %122, align 8
  %123 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %124 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @be16_to_cpu(i8* %126)
  %128 = load %struct.ms_boot_page*, %struct.ms_boot_page** %2, align 8
  %129 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  ret void
}

declare dso_local i8* @be16_to_cpu(i8*) #1

declare dso_local i8* @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
