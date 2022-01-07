; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_peer_assoc_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_peer_assoc_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_peer_assoc_complete_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.wmi_common_peer_assoc_complete_cmd = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i8*, %struct.wmi_peer_assoc_complete_arg*)* @ath10k_wmi_peer_assoc_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_peer_assoc_fill(%struct.ath10k* %0, i8* %1, %struct.wmi_peer_assoc_complete_arg* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wmi_peer_assoc_complete_arg*, align 8
  %7 = alloca %struct.wmi_common_peer_assoc_complete_cmd*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wmi_peer_assoc_complete_arg* %2, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.wmi_common_peer_assoc_complete_cmd*
  store %struct.wmi_common_peer_assoc_complete_cmd* %9, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %10 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %11 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @__cpu_to_le32(i32 %12)
  %14 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %14, i32 0, i32 16
  store i8* %13, i8** %15, align 8
  %16 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %17 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %16, i32 0, i32 16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  %22 = call i8* @__cpu_to_le32(i32 %21)
  %23 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %23, i32 0, i32 15
  store i8* %22, i8** %24, align 8
  %25 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %26 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @__cpu_to_le32(i32 %27)
  %29 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %29, i32 0, i32 14
  store i8* %28, i8** %30, align 8
  %31 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %32 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @__cpu_to_le32(i32 %33)
  %35 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %35, i32 0, i32 13
  store i8* %34, i8** %36, align 8
  %37 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %38 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @__cpu_to_le32(i32 %39)
  %41 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %41, i32 0, i32 12
  store i8* %40, i8** %42, align 8
  %43 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %44 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @__cpu_to_le32(i32 %45)
  %47 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %47, i32 0, i32 11
  store i8* %46, i8** %48, align 8
  %49 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %50 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @__cpu_to_le32(i32 %51)
  %53 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %54 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  %55 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %56 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @__cpu_to_le32(i32 %57)
  %59 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %59, i32 0, i32 9
  store i8* %58, i8** %60, align 8
  %61 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %62 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @__cpu_to_le32(i32 %63)
  %65 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %65, i32 0, i32 8
  store i8* %64, i8** %66, align 8
  %67 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %68 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @__cpu_to_le32(i32 %69)
  %71 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %71, i32 0, i32 7
  store i8* %70, i8** %72, align 8
  %73 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %74 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @__cpu_to_le32(i32 %75)
  %77 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %77, i32 0, i32 6
  store i8* %76, i8** %78, align 8
  %79 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %80 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @__cpu_to_le32(i32 %81)
  %83 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %86 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @__cpu_to_le32(i32 %87)
  %89 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %96 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ether_addr_copy(i32 %94, i32 %97)
  %99 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %100 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %99, i32 0, i32 14
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @__cpu_to_le32(i32 %102)
  %104 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %112 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %111, i32 0, i32 14
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %116 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %115, i32 0, i32 14
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @memcpy(i32 %110, i32 %114, i32 %118)
  %120 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %121 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %120, i32 0, i32 13
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @__cpu_to_le32(i32 %123)
  %125 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %126 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %133 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %132, i32 0, i32 13
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %137 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %136, i32 0, i32 13
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @memcpy(i32 %131, i32 %135, i32 %139)
  %141 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %142 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %141, i32 0, i32 12
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @__cpu_to_le32(i32 %144)
  %146 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %147 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 3
  store i8* %145, i8** %148, align 8
  %149 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %150 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %149, i32 0, i32 12
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @__cpu_to_le32(i32 %152)
  %154 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  store i8* %153, i8** %156, align 8
  %157 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %158 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %157, i32 0, i32 12
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @__cpu_to_le32(i32 %160)
  %162 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %163 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  store i8* %161, i8** %164, align 8
  %165 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %166 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %165, i32 0, i32 12
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @__cpu_to_le32(i32 %168)
  %170 = load %struct.wmi_common_peer_assoc_complete_cmd*, %struct.wmi_common_peer_assoc_complete_cmd** %7, align 8
  %171 = getelementptr inbounds %struct.wmi_common_peer_assoc_complete_cmd, %struct.wmi_common_peer_assoc_complete_cmd* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  store i8* %169, i8** %172, align 8
  ret void
}

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
