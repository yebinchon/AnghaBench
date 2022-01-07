; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ar9170_stream = type { i64, i32*, i32 }

@AR9170_RX_STREAM_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"missing tag!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"possible multi stream corruption!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"double rx stream corruption!\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%d bytes of unprocessed data left in rx stream!\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"damaged RX stream data [want:%d, data:%d, rx:%d, pending:%d ]\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rxbuf:\00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"stream:\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"please check your hardware and cables, if you see this message frequently.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i8*, i32)* @carl9170_rx_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_rx_stream(%struct.ar9170* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ar9170_stream*, align 8
  %11 = alloca i32*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %11, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %143, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp uge i32 %16, 4
  br i1 %17, label %18, label %159

18:                                               ; preds = %15
  %19 = load i32*, i32** %11, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = bitcast i8* %20 to %struct.ar9170_stream*
  store %struct.ar9170_stream* %21, %struct.ar9170_stream** %10, align 8
  %22 = load %struct.ar9170_stream*, %struct.ar9170_stream** %10, align 8
  %23 = getelementptr inbounds %struct.ar9170_stream, %struct.ar9170_stream* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ALIGN(i32 %26, i32 4)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ar9170_stream*, %struct.ar9170_stream** %10, align 8
  %29 = getelementptr inbounds %struct.ar9170_stream, %struct.ar9170_stream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @AR9170_RX_STREAM_TAG, align 4
  %32 = call i64 @cpu_to_le16(i32 %31)
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %110

34:                                               ; preds = %18
  %35 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %36 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = call i64 (...) @net_ratelimit()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %44 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @wiphy_err(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %42, %39
  %50 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @__carl9170_rx(%struct.ar9170* %50, i32* %51, i32 %52)
  br label %232

54:                                               ; preds = %34
  %55 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %56 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = call i64 (...) @net_ratelimit()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %65 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @wiphy_err(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %175

70:                                               ; preds = %60
  br label %216

71:                                               ; preds = %54
  %72 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %73 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @skb_put_data(%struct.TYPE_6__* %74, i32* %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %80 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %84 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ule i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %71
  %88 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %89 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %91 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %92 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %97 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  call void @carl9170_rx_stream(%struct.ar9170* %90, i8* %95, i32 %100)
  %101 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %102 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = call i32 @skb_reset_tail_pointer(%struct.TYPE_6__* %103)
  %105 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %106 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = call i32 @skb_trim(%struct.TYPE_6__* %107, i32 0)
  br label %109

109:                                              ; preds = %87, %71
  br label %232

110:                                              ; preds = %18
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub i32 %112, 4
  %114 = icmp ugt i32 %111, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %110
  %116 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %117 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = call i64 (...) @net_ratelimit()
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %125 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %124, i32 0, i32 2
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, ...) @wiphy_err(i32 %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %175

130:                                              ; preds = %120
  br label %216

131:                                              ; preds = %115
  %132 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %133 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @skb_put_data(%struct.TYPE_6__* %134, i32* %135, i32 %136)
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %7, align 4
  %140 = sub i32 %138, %139
  %141 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %142 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  br label %232

143:                                              ; preds = %110
  %144 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %145 = load %struct.ar9170_stream*, %struct.ar9170_stream** %10, align 8
  %146 = getelementptr inbounds %struct.ar9170_stream, %struct.ar9170_stream* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @__carl9170_rx(%struct.ar9170* %144, i32* %147, i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = add i32 %150, 4
  %152 = load i32*, i32** %11, align 8
  %153 = zext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %11, align 8
  %155 = load i32, i32* %8, align 4
  %156 = add i32 %155, 4
  %157 = load i32, i32* %7, align 4
  %158 = sub i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %15

159:                                              ; preds = %15
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = call i64 (...) @net_ratelimit()
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %167 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %166, i32 0, i32 2
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i32 (i32, i8*, ...) @wiphy_err(i32 %170, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %165, %162
  br label %175

174:                                              ; preds = %159
  br label %232

175:                                              ; preds = %173, %123, %63
  %176 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %177 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %176, i32 0, i32 2
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %185 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (i32, i8*, ...) @wiphy_err(i32 %180, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %181, i32 %182, i32 %183, i32 %186)
  %188 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %189 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %175
  %193 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %194 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %195 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %194, i32 0, i32 1
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %200 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %199, i32 0, i32 1
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %193, i8* %198, i32 %203)
  br label %205

205:                                              ; preds = %192, %175
  %206 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %207 = load i8*, i8** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %206, i8* %207, i32 %208)
  %210 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %211 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %210, i32 0, i32 2
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i32, i8*, ...) @wiphy_err(i32 %214, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0))
  br label %216

216:                                              ; preds = %205, %130, %70
  %217 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %218 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %216
  %222 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %223 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %222, i32 0, i32 1
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = call i32 @skb_reset_tail_pointer(%struct.TYPE_6__* %224)
  %226 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %227 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %226, i32 0, i32 1
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = call i32 @skb_trim(%struct.TYPE_6__* %228, i32 0)
  %230 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %231 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %230, i32 0, i32 0
  store i32 0, i32* %231, align 8
  br label %232

232:                                              ; preds = %49, %109, %131, %174, %221, %216
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_err(i32, i8*, ...) #1

declare dso_local i32 @__carl9170_rx(%struct.ar9170*, i32*, i32) #1

declare dso_local i32 @skb_put_data(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @skb_reset_tail_pointer(%struct.TYPE_6__*) #1

declare dso_local i32 @skb_trim(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
