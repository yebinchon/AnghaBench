; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_net1080_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_net1080_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.nc_header = type { i8*, i8*, i8* }
%struct.nc_trailer = type { i32 }

@PAD_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @net1080_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @net1080_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nc_header*, align 8
  %10 = alloca %struct.nc_trailer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nc_header* null, %struct.nc_header** %9, align 8
  store %struct.nc_trailer* null, %struct.nc_trailer** %10, align 8
  store i32 4, i32* %11, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 24
  %23 = and i64 %22, 1
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @skb_cloned(%struct.sk_buff* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %72, label %32

32:                                               ; preds = %28
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @skb_headroom(%struct.sk_buff* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @skb_tailroom(%struct.sk_buff* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ule i64 24, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %85

45:                                               ; preds = %40, %32
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 24, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 24
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memmove(i64 %58, i32 %61, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %68, i32 %69)
  br label %85

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %71, %28
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %73, i32 24, i32 %74, i32 %75)
  store %struct.sk_buff* %76, %struct.sk_buff** %8, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %72
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %82, %struct.sk_buff** %4, align 8
  br label %123

83:                                               ; preds = %72
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %84, %struct.sk_buff** %6, align 8
  br label %85

85:                                               ; preds = %83, %54, %44
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = call %struct.nc_header* @skb_push(%struct.sk_buff* %86, i32 24)
  store %struct.nc_header* %87, %struct.nc_header** %9, align 8
  %88 = call i8* @cpu_to_le16(i32 24)
  %89 = load %struct.nc_header*, %struct.nc_header** %9, align 8
  %90 = getelementptr inbounds %struct.nc_header, %struct.nc_header* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i8* @cpu_to_le16(i32 %91)
  %93 = load %struct.nc_header*, %struct.nc_header** %9, align 8
  %94 = getelementptr inbounds %struct.nc_header, %struct.nc_header* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %96 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = call i8* @cpu_to_le16(i32 %97)
  %100 = load %struct.nc_header*, %struct.nc_header** %9, align 8
  %101 = getelementptr inbounds %struct.nc_header, %struct.nc_header* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 4
  %107 = and i64 %106, 1
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %85
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load i32, i32* @PAD_BYTE, align 4
  %112 = call i32 @skb_put_u8(%struct.sk_buff* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %85
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = call %struct.nc_trailer* @skb_put(%struct.sk_buff* %114, i32 4)
  store %struct.nc_trailer* %115, %struct.nc_trailer** %10, align 8
  %116 = load %struct.nc_header*, %struct.nc_header** %9, align 8
  %117 = getelementptr inbounds %struct.nc_header, %struct.nc_header* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.nc_trailer*, %struct.nc_trailer** %10, align 8
  %120 = getelementptr inbounds %struct.nc_trailer, %struct.nc_trailer* %119, i32 0, i32 0
  %121 = call i32 @put_unaligned(i8* %118, i32* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %122, %struct.sk_buff** %4, align 8
  br label %123

123:                                              ; preds = %113, %81
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %124
}

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i32, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.nc_header* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local %struct.nc_trailer* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
