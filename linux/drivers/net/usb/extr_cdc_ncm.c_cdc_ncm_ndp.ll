; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_ndp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_ndp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_cdc_ncm_ndp16 = type { i64, i8*, i8* }
%struct.cdc_ncm_ctx = type { i32, i64, i64, %struct.usb_cdc_ncm_ndp16*, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.usb_cdc_ncm_nth16 = type { i8* }

@CDC_NCM_FLAG_NDP_TO_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_cdc_ncm_ndp16* (%struct.cdc_ncm_ctx*, %struct.sk_buff*, i64, i64)* @cdc_ncm_ndp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_cdc_ncm_ndp16* @cdc_ncm_ndp(%struct.cdc_ncm_ctx* %0, %struct.sk_buff* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.usb_cdc_ncm_ndp16*, align 8
  %6 = alloca %struct.cdc_ncm_ctx*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_cdc_ncm_ndp16*, align 8
  %11 = alloca %struct.usb_cdc_ncm_nth16*, align 8
  %12 = alloca i64, align 8
  store %struct.cdc_ncm_ctx* %0, %struct.cdc_ncm_ctx** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.usb_cdc_ncm_ndp16* null, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.usb_cdc_ncm_nth16*
  store %struct.usb_cdc_ncm_nth16* %17, %struct.usb_cdc_ncm_nth16** %11, align 8
  %18 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %11, align 8
  %19 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @le16_to_cpu(i8* %20)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CDC_NCM_FLAG_NDP_TO_END, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %4
  %29 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %29, i32 0, i32 3
  %31 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %30, align 8
  %32 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %37, i32 0, i32 3
  %39 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %38, align 8
  store %struct.usb_cdc_ncm_ndp16* %39, %struct.usb_cdc_ncm_ndp16** %5, align 8
  br label %148

40:                                               ; preds = %28
  %41 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %41, i32 0, i32 3
  %43 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %42, align 8
  %44 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store %struct.usb_cdc_ncm_ndp16* null, %struct.usb_cdc_ncm_ndp16** %5, align 8
  br label %148

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %4
  br label %51

51:                                               ; preds = %68, %50
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %57, %58
  %60 = inttoptr i64 %59 to %struct.usb_cdc_ncm_ndp16*
  store %struct.usb_cdc_ncm_ndp16* %60, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %61 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %62 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  store %struct.usb_cdc_ncm_ndp16* %67, %struct.usb_cdc_ncm_ndp16** %5, align 8
  br label %148

68:                                               ; preds = %54
  %69 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %70 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @le16_to_cpu(i8* %71)
  store i64 %72, i64* %12, align 8
  br label %51

73:                                               ; preds = %51
  %74 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CDC_NCM_FLAG_NDP_TO_END, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %73
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %86 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @cdc_ncm_align_tail(%struct.sk_buff* %81, i32 %84, i32 0, i64 %87)
  br label %89

89:                                               ; preds = %80, %73
  %90 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %91 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %92, %95
  %97 = load i64, i64* %9, align 8
  %98 = sub i64 %96, %97
  %99 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %100 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  store %struct.usb_cdc_ncm_ndp16* null, %struct.usb_cdc_ncm_ndp16** %5, align 8
  br label %148

104:                                              ; preds = %89
  %105 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %106 = icmp ne %struct.usb_cdc_ncm_ndp16* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i8* @cpu_to_le16(i32 %111)
  %113 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %114 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  br label %123

115:                                              ; preds = %104
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i8* @cpu_to_le16(i32 %119)
  %121 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %11, align 8
  %122 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %115, %107
  %124 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %125 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CDC_NCM_FLAG_NDP_TO_END, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %123
  %131 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %132 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %133 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = call %struct.usb_cdc_ncm_ndp16* @skb_put_zero(%struct.sk_buff* %131, i64 %134)
  store %struct.usb_cdc_ncm_ndp16* %135, %struct.usb_cdc_ncm_ndp16** %10, align 8
  br label %140

136:                                              ; preds = %123
  %137 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %138 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %137, i32 0, i32 3
  %139 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %138, align 8
  store %struct.usb_cdc_ncm_ndp16* %139, %struct.usb_cdc_ncm_ndp16** %10, align 8
  br label %140

140:                                              ; preds = %136, %130
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %143 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = call i8* @cpu_to_le16(i32 28)
  %145 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %146 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  store %struct.usb_cdc_ncm_ndp16* %147, %struct.usb_cdc_ncm_ndp16** %5, align 8
  br label %148

148:                                              ; preds = %140, %103, %66, %47, %36
  %149 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %5, align 8
  ret %struct.usb_cdc_ncm_ndp16* %149
}

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @cdc_ncm_align_tail(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.usb_cdc_ncm_ndp16* @skb_put_zero(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
