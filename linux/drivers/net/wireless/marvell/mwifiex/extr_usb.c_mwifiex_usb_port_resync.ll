; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_port_resync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_port_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.mwifiex_private**, i64, %struct.usb_card_rec* }
%struct.mwifiex_private = type { i64, i64, i64, i64 }
%struct.usb_card_rec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@MWIFIEX_USB_EP_DATA = common dso_local global i8* null, align 8
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@MWIFIEX_BSS_ROLE_STA = common dso_local global i64 0, align 8
@MWIFIEX_TX_DATA_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_usb_port_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_usb_port_resync(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.usb_card_rec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 3
  %9 = load %struct.usb_card_rec*, %struct.usb_card_rec** %8, align 8
  store %struct.usb_card_rec* %9, %struct.usb_card_rec** %3, align 8
  %10 = load i8*, i8** @MWIFIEX_USB_EP_DATA, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %4, align 8
  store %struct.mwifiex_private* null, %struct.mwifiex_private** %5, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %62, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %17
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %24, i32 0, i32 1
  %26 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %26, i64 %28
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %29, align 8
  store %struct.mwifiex_private* %30, %struct.mwifiex_private** %5, align 8
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %32 = icmp ne %struct.mwifiex_private* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %62

34:                                               ; preds = %23
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %36 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40, %34
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MWIFIEX_BSS_ROLE_STA, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51, %40
  %57 = load i8*, i8** @MWIFIEX_USB_EP_DATA, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %60 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %51, %45
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %17

65:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @MWIFIEX_TX_DATA_PORT, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %72 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %66

81:                                               ; preds = %66
  br label %192

82:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %127, %82
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %83
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %90, i32 0, i32 1
  %92 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %92, i64 %94
  %96 = load %struct.mwifiex_private*, %struct.mwifiex_private** %95, align 8
  store %struct.mwifiex_private* %96, %struct.mwifiex_private** %5, align 8
  %97 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %98 = icmp ne %struct.mwifiex_private* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  br label %127

100:                                              ; preds = %89
  %101 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %102 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %108 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %106, %100
  %112 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %113 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MWIFIEX_BSS_ROLE_STA, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %119 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117, %106
  %123 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %124 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %4, align 8
  br label %130

126:                                              ; preds = %117, %111
  br label %127

127:                                              ; preds = %126, %99
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %83

130:                                              ; preds = %122, %83
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %152, %130
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %134 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %131
  %138 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %139 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %138, i32 0, i32 1
  %140 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %140, i64 %142
  %144 = load %struct.mwifiex_private*, %struct.mwifiex_private** %143, align 8
  store %struct.mwifiex_private* %144, %struct.mwifiex_private** %5, align 8
  %145 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %146 = icmp ne %struct.mwifiex_private* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %137
  %148 = load i64, i64* %4, align 8
  %149 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %150 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %137
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %131

155:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %188, %155
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @MWIFIEX_TX_DATA_PORT, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %191

160:                                              ; preds = %156
  %161 = load i64, i64* %4, align 8
  %162 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %163 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %161, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %160
  %172 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %173 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %172, i32 0, i32 0
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  br label %187

179:                                              ; preds = %160
  %180 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %181 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %180, i32 0, i32 0
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  br label %187

187:                                              ; preds = %179, %171
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %156

191:                                              ; preds = %156
  br label %192

192:                                              ; preds = %191, %81
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
