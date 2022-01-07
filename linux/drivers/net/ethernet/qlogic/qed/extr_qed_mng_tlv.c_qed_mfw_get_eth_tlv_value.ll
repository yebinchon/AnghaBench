; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mng_tlv.c_qed_mfw_get_eth_tlv_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mng_tlv.c_qed_mfw_get_eth_tlv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_drv_tlv_hdr = type { i32 }
%struct.qed_mfw_tlv_eth = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_tlv_parsed_buf = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_drv_tlv_hdr*, %struct.qed_mfw_tlv_eth*, %struct.qed_tlv_parsed_buf*)* @qed_mfw_get_eth_tlv_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mfw_get_eth_tlv_value(%struct.qed_drv_tlv_hdr* %0, %struct.qed_mfw_tlv_eth* %1, %struct.qed_tlv_parsed_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_drv_tlv_hdr*, align 8
  %6 = alloca %struct.qed_mfw_tlv_eth*, align 8
  %7 = alloca %struct.qed_tlv_parsed_buf*, align 8
  store %struct.qed_drv_tlv_hdr* %0, %struct.qed_drv_tlv_hdr** %5, align 8
  store %struct.qed_mfw_tlv_eth* %1, %struct.qed_mfw_tlv_eth** %6, align 8
  store %struct.qed_tlv_parsed_buf* %2, %struct.qed_tlv_parsed_buf** %7, align 8
  %8 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %9 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %176 [
    i32 141, label %11
    i32 140, label %22
    i32 136, label %33
    i32 131, label %44
    i32 134, label %55
    i32 137, label %66
    i32 139, label %77
    i32 138, label %88
    i32 130, label %99
    i32 135, label %110
    i32 142, label %121
    i32 129, label %132
    i32 133, label %143
    i32 128, label %154
    i32 132, label %165
  ]

11:                                               ; preds = %3
  %12 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %13 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %12, i32 0, i32 29
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %18 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %17, i32 0, i32 28
  %19 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %20 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  store i32 4, i32* %4, align 4
  br label %178

21:                                               ; preds = %11
  br label %177

22:                                               ; preds = %3
  %23 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %24 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %23, i32 0, i32 27
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %29 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %28, i32 0, i32 26
  %30 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %31 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  store i32 4, i32* %4, align 4
  br label %178

32:                                               ; preds = %22
  br label %177

33:                                               ; preds = %3
  %34 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %35 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %34, i32 0, i32 25
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %40 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %39, i32 0, i32 24
  %41 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %42 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  store i32 4, i32* %4, align 4
  br label %178

43:                                               ; preds = %33
  br label %177

44:                                               ; preds = %3
  %45 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %46 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %45, i32 0, i32 23
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %51 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %50, i32 0, i32 22
  %52 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %53 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  store i32 4, i32* %4, align 4
  br label %178

54:                                               ; preds = %44
  br label %177

55:                                               ; preds = %3
  %56 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %57 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %56, i32 0, i32 21
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %62 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %61, i32 0, i32 20
  %63 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %64 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  store i32 4, i32* %4, align 4
  br label %178

65:                                               ; preds = %55
  br label %177

66:                                               ; preds = %3
  %67 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %68 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %67, i32 0, i32 19
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %73 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %72, i32 0, i32 18
  %74 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %75 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  store i32 4, i32* %4, align 4
  br label %178

76:                                               ; preds = %66
  br label %177

77:                                               ; preds = %3
  %78 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %79 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %78, i32 0, i32 17
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %84 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %83, i32 0, i32 16
  %85 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %86 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  store i32 4, i32* %4, align 4
  br label %178

87:                                               ; preds = %77
  br label %177

88:                                               ; preds = %3
  %89 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %90 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %89, i32 0, i32 15
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %95 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %94, i32 0, i32 14
  %96 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %97 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %96, i32 0, i32 0
  store i32* %95, i32** %97, align 8
  store i32 4, i32* %4, align 4
  br label %178

98:                                               ; preds = %88
  br label %177

99:                                               ; preds = %3
  %100 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %101 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %100, i32 0, i32 13
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %106 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %105, i32 0, i32 12
  %107 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %108 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %107, i32 0, i32 0
  store i32* %106, i32** %108, align 8
  store i32 4, i32* %4, align 4
  br label %178

109:                                              ; preds = %99
  br label %177

110:                                              ; preds = %3
  %111 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %112 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %117 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %116, i32 0, i32 10
  %118 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %119 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %118, i32 0, i32 0
  store i32* %117, i32** %119, align 8
  store i32 4, i32* %4, align 4
  br label %178

120:                                              ; preds = %110
  br label %177

121:                                              ; preds = %3
  %122 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %123 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %128 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %127, i32 0, i32 8
  %129 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %130 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %129, i32 0, i32 0
  store i32* %128, i32** %130, align 8
  store i32 4, i32* %4, align 4
  br label %178

131:                                              ; preds = %121
  br label %177

132:                                              ; preds = %3
  %133 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %134 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %139 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %138, i32 0, i32 6
  %140 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %141 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %140, i32 0, i32 0
  store i32* %139, i32** %141, align 8
  store i32 4, i32* %4, align 4
  br label %178

142:                                              ; preds = %132
  br label %177

143:                                              ; preds = %3
  %144 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %145 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %150 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %149, i32 0, i32 4
  %151 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %152 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %151, i32 0, i32 0
  store i32* %150, i32** %152, align 8
  store i32 4, i32* %4, align 4
  br label %178

153:                                              ; preds = %143
  br label %177

154:                                              ; preds = %3
  %155 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %156 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %161 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %160, i32 0, i32 2
  %162 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %163 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %162, i32 0, i32 0
  store i32* %161, i32** %163, align 8
  store i32 4, i32* %4, align 4
  br label %178

164:                                              ; preds = %154
  br label %177

165:                                              ; preds = %3
  %166 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %167 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.qed_mfw_tlv_eth*, %struct.qed_mfw_tlv_eth** %6, align 8
  %172 = getelementptr inbounds %struct.qed_mfw_tlv_eth, %struct.qed_mfw_tlv_eth* %171, i32 0, i32 0
  %173 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %174 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %173, i32 0, i32 0
  store i32* %172, i32** %174, align 8
  store i32 4, i32* %4, align 4
  br label %178

175:                                              ; preds = %165
  br label %177

176:                                              ; preds = %3
  br label %177

177:                                              ; preds = %176, %175, %164, %153, %142, %131, %120, %109, %98, %87, %76, %65, %54, %43, %32, %21
  store i32 -1, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %170, %159, %148, %137, %126, %115, %104, %93, %82, %71, %60, %49, %38, %27, %16
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
