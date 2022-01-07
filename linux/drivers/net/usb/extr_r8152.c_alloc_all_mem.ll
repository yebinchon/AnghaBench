; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_alloc_all_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_alloc_all_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, i32, i32, i8*, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, %struct.usb_interface*, %struct.net_device* }
%struct.TYPE_5__ = type { i32, i32*, i32*, %struct.urb*, %struct.r8152* }
%struct.urb = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.usb_host_endpoint* }
%struct.usb_host_endpoint = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@RTL8152_MAX_RX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTL8152_MAX_TX = common dso_local global i32 0, align 4
@agg_buf_sz = common dso_local global i64 0, align 8
@TX_ALIGN = common dso_local global i64 0, align 8
@INTBUFSIZE = common dso_local global i32 0, align 4
@intr_callback = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*)* @alloc_all_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_all_mem(%struct.r8152* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb*, align 8
  %11 = alloca i32*, align 8
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  %12 = load %struct.r8152*, %struct.r8152** %3, align 8
  %13 = getelementptr inbounds %struct.r8152, %struct.r8152* %12, i32 0, i32 14
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.r8152*, %struct.r8152** %3, align 8
  %16 = getelementptr inbounds %struct.r8152, %struct.r8152* %15, i32 0, i32 13
  %17 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  store %struct.usb_interface* %17, %struct.usb_interface** %5, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 0
  %20 = load %struct.usb_host_interface*, %struct.usb_host_interface** %19, align 8
  store %struct.usb_host_interface* %20, %struct.usb_host_interface** %6, align 8
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i32 0, i32 0
  %23 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %22, align 8
  %24 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %23, i64 2
  store %struct.usb_host_endpoint* %24, %struct.usb_host_endpoint** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_to_node(i64 %34)
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i32 [ %35, %30 ], [ -1, %36 ]
  store i32 %38, i32* %8, align 4
  %39 = load %struct.r8152*, %struct.r8152** %3, align 8
  %40 = getelementptr inbounds %struct.r8152, %struct.r8152* %39, i32 0, i32 12
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.r8152*, %struct.r8152** %3, align 8
  %43 = getelementptr inbounds %struct.r8152, %struct.r8152* %42, i32 0, i32 11
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.r8152*, %struct.r8152** %3, align 8
  %46 = getelementptr inbounds %struct.r8152, %struct.r8152* %45, i32 0, i32 10
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.r8152*, %struct.r8152** %3, align 8
  %49 = getelementptr inbounds %struct.r8152, %struct.r8152* %48, i32 0, i32 4
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.r8152*, %struct.r8152** %3, align 8
  %52 = getelementptr inbounds %struct.r8152, %struct.r8152* %51, i32 0, i32 9
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.r8152*, %struct.r8152** %3, align 8
  %55 = getelementptr inbounds %struct.r8152, %struct.r8152* %54, i32 0, i32 8
  %56 = call i32 @skb_queue_head_init(i32* %55)
  %57 = load %struct.r8152*, %struct.r8152** %3, align 8
  %58 = getelementptr inbounds %struct.r8152, %struct.r8152* %57, i32 0, i32 7
  %59 = call i32 @skb_queue_head_init(i32* %58)
  %60 = load %struct.r8152*, %struct.r8152** %3, align 8
  %61 = getelementptr inbounds %struct.r8152, %struct.r8152* %60, i32 0, i32 6
  %62 = call i32 @atomic_set(i32* %61, i32 0)
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %74, %37
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @RTL8152_MAX_RX, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.r8152*, %struct.r8152** %3, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32 @alloc_rx_agg(%struct.r8152* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %221

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %63

77:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %169, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @RTL8152_MAX_TX, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %172

82:                                               ; preds = %78
  %83 = load i64, i64* @agg_buf_sz, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32* @kmalloc_node(i64 %83, i32 %84, i32 %85)
  store i32* %86, i32** %11, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  br label %221

90:                                               ; preds = %82
  %91 = load i32*, i32** %11, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i32* @tx_agg_align(i32* %92)
  %94 = icmp ne i32* %91, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @kfree(i32* %96)
  %98 = load i64, i64* @agg_buf_sz, align 8
  %99 = load i64, i64* @TX_ALIGN, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32* @kmalloc_node(i64 %100, i32 %101, i32 %102)
  store i32* %103, i32** %11, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %95
  br label %221

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %90
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i8* @usb_alloc_urb(i32 0, i32 %109)
  %111 = bitcast i8* %110 to %struct.urb*
  store %struct.urb* %111, %struct.urb** %10, align 8
  %112 = load %struct.urb*, %struct.urb** %10, align 8
  %113 = icmp ne %struct.urb* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @kfree(i32* %115)
  br label %221

117:                                              ; preds = %108
  %118 = load %struct.r8152*, %struct.r8152** %3, align 8
  %119 = getelementptr inbounds %struct.r8152, %struct.r8152* %118, i32 0, i32 5
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = call i32 @INIT_LIST_HEAD(i32* %124)
  %126 = load %struct.r8152*, %struct.r8152** %3, align 8
  %127 = load %struct.r8152*, %struct.r8152** %3, align 8
  %128 = getelementptr inbounds %struct.r8152, %struct.r8152* %127, i32 0, i32 5
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  store %struct.r8152* %126, %struct.r8152** %133, align 8
  %134 = load %struct.urb*, %struct.urb** %10, align 8
  %135 = load %struct.r8152*, %struct.r8152** %3, align 8
  %136 = getelementptr inbounds %struct.r8152, %struct.r8152* %135, i32 0, i32 5
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  store %struct.urb* %134, %struct.urb** %141, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = load %struct.r8152*, %struct.r8152** %3, align 8
  %144 = getelementptr inbounds %struct.r8152, %struct.r8152* %143, i32 0, i32 5
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store i32* %142, i32** %149, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = call i32* @tx_agg_align(i32* %150)
  %152 = load %struct.r8152*, %struct.r8152** %3, align 8
  %153 = getelementptr inbounds %struct.r8152, %struct.r8152* %152, i32 0, i32 5
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  store i32* %151, i32** %158, align 8
  %159 = load %struct.r8152*, %struct.r8152** %3, align 8
  %160 = getelementptr inbounds %struct.r8152, %struct.r8152* %159, i32 0, i32 5
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load %struct.r8152*, %struct.r8152** %3, align 8
  %167 = getelementptr inbounds %struct.r8152, %struct.r8152* %166, i32 0, i32 4
  %168 = call i32 @list_add_tail(i32* %165, i32* %167)
  br label %169

169:                                              ; preds = %117
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %78

172:                                              ; preds = %78
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call i8* @usb_alloc_urb(i32 0, i32 %173)
  %175 = load %struct.r8152*, %struct.r8152** %3, align 8
  %176 = getelementptr inbounds %struct.r8152, %struct.r8152* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  %177 = load %struct.r8152*, %struct.r8152** %3, align 8
  %178 = getelementptr inbounds %struct.r8152, %struct.r8152* %177, i32 0, i32 3
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %172
  br label %221

182:                                              ; preds = %172
  %183 = load i32, i32* @INTBUFSIZE, align 4
  %184 = load i32, i32* @GFP_KERNEL, align 4
  %185 = call i32 @kmalloc(i32 %183, i32 %184)
  %186 = load %struct.r8152*, %struct.r8152** %3, align 8
  %187 = getelementptr inbounds %struct.r8152, %struct.r8152* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.r8152*, %struct.r8152** %3, align 8
  %189 = getelementptr inbounds %struct.r8152, %struct.r8152* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %182
  br label %221

193:                                              ; preds = %182
  %194 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %195 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = load %struct.r8152*, %struct.r8152** %3, align 8
  %200 = getelementptr inbounds %struct.r8152, %struct.r8152* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.r8152*, %struct.r8152** %3, align 8
  %202 = getelementptr inbounds %struct.r8152, %struct.r8152* %201, i32 0, i32 3
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.r8152*, %struct.r8152** %3, align 8
  %205 = getelementptr inbounds %struct.r8152, %struct.r8152* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.r8152*, %struct.r8152** %3, align 8
  %208 = getelementptr inbounds %struct.r8152, %struct.r8152* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @usb_rcvintpipe(i32 %209, i32 3)
  %211 = load %struct.r8152*, %struct.r8152** %3, align 8
  %212 = getelementptr inbounds %struct.r8152, %struct.r8152* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @INTBUFSIZE, align 4
  %215 = load i32, i32* @intr_callback, align 4
  %216 = load %struct.r8152*, %struct.r8152** %3, align 8
  %217 = load %struct.r8152*, %struct.r8152** %3, align 8
  %218 = getelementptr inbounds %struct.r8152, %struct.r8152* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @usb_fill_int_urb(i8* %203, i32 %206, i32 %210, i32 %213, i32 %214, i32 %215, %struct.r8152* %216, i32 %219)
  store i32 0, i32* %2, align 4
  br label %226

221:                                              ; preds = %192, %181, %114, %106, %89, %72
  %222 = load %struct.r8152*, %struct.r8152** %3, align 8
  %223 = call i32 @free_all_mem(%struct.r8152* %222)
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %221, %193
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @dev_to_node(i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @alloc_rx_agg(%struct.r8152*, i32) #1

declare dso_local i32* @kmalloc_node(i64, i32, i32) #1

declare dso_local i32* @tx_agg_align(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i8*, i32, i32, i32, i32, i32, %struct.r8152*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @free_all_mem(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
