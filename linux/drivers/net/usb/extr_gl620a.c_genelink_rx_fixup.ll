; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_gl620a.c_genelink_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_gl620a.c_genelink_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64, i64 }
%struct.gl_header = type { %struct.gl_packet, i32 }
%struct.gl_packet = type { i32*, i32 }

@GL_MAX_TRANSMIT_PACKETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"genelink: invalid received packet count %u\0A\00", align 1
@GL_MAX_PACKET_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"genelink: invalid rx length %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @genelink_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genelink_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.gl_header*, align 8
  %7 = alloca %struct.gl_packet*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %110

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.gl_header*
  store %struct.gl_header* %25, %struct.gl_header** %6, align 8
  %26 = load %struct.gl_header*, %struct.gl_header** %6, align 8
  %27 = getelementptr inbounds %struct.gl_header, %struct.gl_header* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @GL_MAX_TRANSMIT_PACKETS, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @netdev_dbg(%struct.TYPE_2__* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %3, align 4
  br label %110

39:                                               ; preds = %21
  %40 = load %struct.gl_header*, %struct.gl_header** %6, align 8
  %41 = getelementptr inbounds %struct.gl_header, %struct.gl_header* %40, i32 0, i32 0
  store %struct.gl_packet* %41, %struct.gl_packet** %7, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @skb_pull(%struct.sk_buff* %42, i32 4)
  br label %44

44:                                               ; preds = %77, %39
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %91

47:                                               ; preds = %44
  %48 = load %struct.gl_packet*, %struct.gl_packet** %7, align 8
  %49 = getelementptr inbounds %struct.gl_packet, %struct.gl_packet* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le32_to_cpu(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @GL_MAX_PACKET_LEN, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %57 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @netdev_dbg(%struct.TYPE_2__* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 0, i32* %3, align 4
  br label %110

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call %struct.sk_buff* @alloc_skb(i32 %62, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %8, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = load %struct.gl_packet*, %struct.gl_packet** %7, align 8
  %70 = getelementptr inbounds %struct.gl_packet, %struct.gl_packet* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @skb_put_data(%struct.sk_buff* %68, i32* %71, i32 %72)
  %74 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = call i32 @usbnet_skb_return(%struct.usbnet* %74, %struct.sk_buff* %75)
  br label %77

77:                                               ; preds = %67, %61
  %78 = load %struct.gl_packet*, %struct.gl_packet** %7, align 8
  %79 = getelementptr inbounds %struct.gl_packet, %struct.gl_packet* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = bitcast i32* %83 to %struct.gl_packet*
  store %struct.gl_packet* %84, %struct.gl_packet** %7, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %10, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 4
  %90 = call i32 @skb_pull(%struct.sk_buff* %87, i32 %89)
  br label %44

91:                                               ; preds = %44
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call i32 @skb_pull(%struct.sk_buff* %92, i32 4)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @GL_MAX_PACKET_LEN, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp sgt i64 %96, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %91
  %101 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %102 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @netdev_dbg(%struct.TYPE_2__* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  store i32 0, i32* %3, align 4
  br label %110

109:                                              ; preds = %91
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %100, %55, %33, %20
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
