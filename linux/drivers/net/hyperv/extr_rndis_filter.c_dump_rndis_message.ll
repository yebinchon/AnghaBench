; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_dump_rndis_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_dump_rndis_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rndis_message = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [118 x i8] c"RNDIS_MSG_PACKET (len %u, data offset %u data len %u, # oob %u, oob offset %u, oob len %u, pkt offset %u, pkt len %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [135 x i8] c"RNDIS_MSG_INIT_C (len %u, id 0x%x, status 0x%x, major %d, minor %d, device flags %d, max xfer size 0x%x, max pkts %u, pkt aligned %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"RNDIS_MSG_QUERY_C (len %u, id 0x%x, status 0x%x, buf len %u, buf offset %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"RNDIS_MSG_SET_C (len %u, id 0x%x, status 0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"RNDIS_MSG_INDICATE (len %u, status 0x%x, buf len %u, buf offset %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"0x%x (len %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rndis_message*)* @dump_rndis_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_rndis_message(%struct.net_device* %0, %struct.rndis_message* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rndis_message*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rndis_message* %1, %struct.rndis_message** %4, align 8
  %5 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %6 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %158 [
    i32 130, label %8
    i32 131, label %49
    i32 129, label %95
    i32 128, label %121
    i32 132, label %137
  ]

8:                                                ; preds = %2
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %11 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %14 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %19 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %24 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %29 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %34 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %39 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %44 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %9, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17, i32 %22, i32 %27, i32 %32, i32 %37, i32 %42, i32 %47)
  br label %167

49:                                               ; preds = %2
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %52 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %55 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %60 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %65 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %70 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %75 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %80 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %85 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %90 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %50, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %58, i32 %63, i32 %68, i32 %73, i32 %78, i32 %83, i32 %88, i32 %93)
  br label %167

95:                                               ; preds = %2
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %98 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %101 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %106 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %111 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %116 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %96, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %104, i32 %109, i32 %114, i32 %119)
  br label %167

121:                                              ; preds = %2
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %124 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %127 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %132 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %130, i32 %135)
  br label %167

137:                                              ; preds = %2
  %138 = load %struct.net_device*, %struct.net_device** %3, align 8
  %139 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %140 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %143 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %148 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %153 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %138, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %146, i32 %151, i32 %156)
  br label %167

158:                                              ; preds = %2
  %159 = load %struct.net_device*, %struct.net_device** %3, align 8
  %160 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %161 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %164 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %158, %137, %121, %95, %49, %8
  ret void
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
