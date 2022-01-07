; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mng_tlv.c_qed_mfw_get_fcoe_tlv_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mng_tlv.c_qed_mfw_get_fcoe_tlv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_drv_tlv_hdr = type { i32 }
%struct.qed_mfw_tlv_fcoe = type { %struct.qed_mfw_tlv_time*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, %struct.qed_mfw_tlv_time*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qed_mfw_tlv_time*, i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.qed_mfw_tlv_time*, i32*, i32*, %struct.qed_mfw_tlv_time*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qed_mfw_tlv_time, i32, i32, %struct.qed_mfw_tlv_time, i32*, i32*, %struct.qed_mfw_tlv_time, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qed_mfw_tlv_time*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_mfw_tlv_time = type { i32 }
%struct.qed_tlv_parsed_buf = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_drv_tlv_hdr*, %struct.qed_mfw_tlv_fcoe*, %struct.qed_tlv_parsed_buf*)* @qed_mfw_get_fcoe_tlv_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mfw_get_fcoe_tlv_value(%struct.qed_drv_tlv_hdr* %0, %struct.qed_mfw_tlv_fcoe* %1, %struct.qed_tlv_parsed_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_drv_tlv_hdr*, align 8
  %6 = alloca %struct.qed_mfw_tlv_fcoe*, align 8
  %7 = alloca %struct.qed_tlv_parsed_buf*, align 8
  %8 = alloca %struct.qed_mfw_tlv_time*, align 8
  %9 = alloca i64, align 8
  store %struct.qed_drv_tlv_hdr* %0, %struct.qed_drv_tlv_hdr** %5, align 8
  store %struct.qed_mfw_tlv_fcoe* %1, %struct.qed_mfw_tlv_fcoe** %6, align 8
  store %struct.qed_tlv_parsed_buf* %2, %struct.qed_tlv_parsed_buf** %7, align 8
  %10 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %1132 [
    i32 136, label %13
    i32 156, label %24
    i32 157, label %35
    i32 243, label %46
    i32 247, label %57
    i32 260, label %68
    i32 190, label %79
    i32 189, label %90
    i32 133, label %101
    i32 131, label %112
    i32 132, label %123
    i32 128, label %134
    i32 134, label %145
    i32 135, label %156
    i32 160, label %167
    i32 164, label %178
    i32 163, label %189
    i32 231, label %200
    i32 239, label %211
    i32 214, label %222
    i32 242, label %233
    i32 158, label %244
    i32 129, label %255
    i32 236, label %266
    i32 240, label %277
    i32 238, label %288
    i32 241, label %299
    i32 235, label %310
    i32 237, label %321
    i32 248, label %332
    i32 258, label %343
    i32 256, label %343
    i32 254, label %343
    i32 252, label %343
    i32 250, label %343
    i32 257, label %366
    i32 255, label %366
    i32 253, label %366
    i32 251, label %366
    i32 249, label %366
    i32 196, label %380
    i32 197, label %391
    i32 162, label %402
    i32 246, label %413
    i32 259, label %424
    i32 225, label %435
    i32 224, label %435
    i32 223, label %435
    i32 222, label %435
    i32 219, label %457
    i32 230, label %462
    i32 229, label %462
    i32 228, label %462
    i32 227, label %462
    i32 226, label %484
    i32 221, label %489
    i32 220, label %500
    i32 234, label %505
    i32 233, label %516
    i32 232, label %527
    i32 165, label %538
    i32 167, label %549
    i32 166, label %560
    i32 185, label %571
    i32 181, label %571
    i32 177, label %571
    i32 173, label %571
    i32 169, label %571
    i32 184, label %594
    i32 180, label %594
    i32 176, label %594
    i32 172, label %594
    i32 168, label %594
    i32 187, label %608
    i32 183, label %608
    i32 179, label %608
    i32 175, label %608
    i32 171, label %608
    i32 186, label %631
    i32 182, label %631
    i32 178, label %631
    i32 174, label %631
    i32 170, label %631
    i32 211, label %646
    i32 199, label %657
    i32 198, label %668
    i32 209, label %679
    i32 207, label %679
    i32 205, label %679
    i32 203, label %679
    i32 201, label %679
    i32 208, label %702
    i32 206, label %702
    i32 204, label %702
    i32 202, label %702
    i32 200, label %702
    i32 210, label %716
    i32 262, label %727
    i32 161, label %738
    i32 261, label %749
    i32 263, label %760
    i32 265, label %771
    i32 264, label %782
    i32 275, label %793
    i32 273, label %793
    i32 271, label %793
    i32 269, label %793
    i32 267, label %793
    i32 274, label %816
    i32 272, label %816
    i32 270, label %816
    i32 268, label %816
    i32 266, label %816
    i32 159, label %830
    i32 218, label %841
    i32 217, label %841
    i32 216, label %841
    i32 215, label %841
    i32 193, label %863
    i32 276, label %874
    i32 130, label %885
    i32 191, label %896
    i32 192, label %907
    i32 188, label %918
    i32 194, label %929
    i32 195, label %940
    i32 212, label %951
    i32 213, label %962
    i32 245, label %973
    i32 244, label %984
    i32 143, label %995
    i32 142, label %1006
    i32 144, label %1017
    i32 140, label %1028
    i32 141, label %1039
    i32 139, label %1050
    i32 137, label %1061
    i32 145, label %1072
    i32 138, label %1083
    i32 150, label %1094
    i32 149, label %1094
    i32 148, label %1094
    i32 147, label %1094
    i32 146, label %1094
    i32 155, label %1117
    i32 154, label %1117
    i32 153, label %1117
    i32 152, label %1117
    i32 151, label %1117
  ]

13:                                               ; preds = %3
  %14 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %15 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %14, i32 0, i32 174
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %20 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %19, i32 0, i32 173
  %21 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %22 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  store i32 4, i32* %4, align 4
  br label %1134

23:                                               ; preds = %13
  br label %1133

24:                                               ; preds = %3
  %25 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %26 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %25, i32 0, i32 172
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %31 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %30, i32 0, i32 171
  %32 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %33 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  store i32 4, i32* %4, align 4
  br label %1134

34:                                               ; preds = %24
  br label %1133

35:                                               ; preds = %3
  %36 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %37 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %36, i32 0, i32 170
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %42 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %41, i32 0, i32 169
  %43 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %44 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  store i32 4, i32* %4, align 4
  br label %1134

45:                                               ; preds = %35
  br label %1133

46:                                               ; preds = %3
  %47 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %48 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %47, i32 0, i32 168
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %53 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %52, i32 0, i32 167
  %54 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %55 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  store i32 4, i32* %4, align 4
  br label %1134

56:                                               ; preds = %46
  br label %1133

57:                                               ; preds = %3
  %58 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %59 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %58, i32 0, i32 166
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %64 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %63, i32 0, i32 165
  %65 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %66 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  store i32 4, i32* %4, align 4
  br label %1134

67:                                               ; preds = %57
  br label %1133

68:                                               ; preds = %3
  %69 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %70 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %69, i32 0, i32 164
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %75 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %74, i32 0, i32 163
  %76 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %77 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %76, i32 0, i32 0
  store i32* %75, i32** %77, align 8
  store i32 4, i32* %4, align 4
  br label %1134

78:                                               ; preds = %68
  br label %1133

79:                                               ; preds = %3
  %80 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %81 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %80, i32 0, i32 162
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %86 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %85, i32 0, i32 161
  %87 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %88 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %87, i32 0, i32 0
  store i32* %86, i32** %88, align 8
  store i32 4, i32* %4, align 4
  br label %1134

89:                                               ; preds = %79
  br label %1133

90:                                               ; preds = %3
  %91 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %92 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %91, i32 0, i32 160
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %97 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %96, i32 0, i32 159
  %98 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %99 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %98, i32 0, i32 0
  store i32* %97, i32** %99, align 8
  store i32 4, i32* %4, align 4
  br label %1134

100:                                              ; preds = %90
  br label %1133

101:                                              ; preds = %3
  %102 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %103 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %102, i32 0, i32 158
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %108 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %107, i32 0, i32 157
  %109 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %110 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %109, i32 0, i32 0
  store i32* %108, i32** %110, align 8
  store i32 4, i32* %4, align 4
  br label %1134

111:                                              ; preds = %101
  br label %1133

112:                                              ; preds = %3
  %113 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %114 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %113, i32 0, i32 156
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %119 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %118, i32 0, i32 155
  %120 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %121 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %120, i32 0, i32 0
  store i32* %119, i32** %121, align 8
  store i32 4, i32* %4, align 4
  br label %1134

122:                                              ; preds = %112
  br label %1133

123:                                              ; preds = %3
  %124 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %125 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %124, i32 0, i32 154
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %130 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %129, i32 0, i32 153
  %131 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %132 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %131, i32 0, i32 0
  store i32* %130, i32** %132, align 8
  store i32 4, i32* %4, align 4
  br label %1134

133:                                              ; preds = %123
  br label %1133

134:                                              ; preds = %3
  %135 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %136 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %135, i32 0, i32 152
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %141 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %140, i32 0, i32 151
  %142 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %143 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %142, i32 0, i32 0
  store i32* %141, i32** %143, align 8
  store i32 4, i32* %4, align 4
  br label %1134

144:                                              ; preds = %134
  br label %1133

145:                                              ; preds = %3
  %146 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %147 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %146, i32 0, i32 150
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %152 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %151, i32 0, i32 149
  %153 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %154 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %153, i32 0, i32 0
  store i32* %152, i32** %154, align 8
  store i32 4, i32* %4, align 4
  br label %1134

155:                                              ; preds = %145
  br label %1133

156:                                              ; preds = %3
  %157 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %158 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %157, i32 0, i32 148
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %163 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %162, i32 0, i32 147
  %164 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %165 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %164, i32 0, i32 0
  store i32* %163, i32** %165, align 8
  store i32 4, i32* %4, align 4
  br label %1134

166:                                              ; preds = %156
  br label %1133

167:                                              ; preds = %3
  %168 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %169 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %168, i32 0, i32 146
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %174 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %173, i32 0, i32 145
  %175 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %176 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %175, i32 0, i32 0
  store i32* %174, i32** %176, align 8
  store i32 4, i32* %4, align 4
  br label %1134

177:                                              ; preds = %167
  br label %1133

178:                                              ; preds = %3
  %179 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %180 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %179, i32 0, i32 144
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %185 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %184, i32 0, i32 143
  %186 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %187 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %186, i32 0, i32 0
  store i32* %185, i32** %187, align 8
  store i32 4, i32* %4, align 4
  br label %1134

188:                                              ; preds = %178
  br label %1133

189:                                              ; preds = %3
  %190 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %191 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %190, i32 0, i32 142
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %196 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %195, i32 0, i32 141
  %197 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %198 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %197, i32 0, i32 0
  store i32* %196, i32** %198, align 8
  store i32 4, i32* %4, align 4
  br label %1134

199:                                              ; preds = %189
  br label %1133

200:                                              ; preds = %3
  %201 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %202 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %201, i32 0, i32 140
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %207 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %206, i32 0, i32 139
  %208 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %209 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %208, i32 0, i32 0
  store i32* %207, i32** %209, align 8
  store i32 4, i32* %4, align 4
  br label %1134

210:                                              ; preds = %200
  br label %1133

211:                                              ; preds = %3
  %212 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %213 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %212, i32 0, i32 138
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %218 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %217, i32 0, i32 137
  %219 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %220 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %219, i32 0, i32 0
  store i32* %218, i32** %220, align 8
  store i32 4, i32* %4, align 4
  br label %1134

221:                                              ; preds = %211
  br label %1133

222:                                              ; preds = %3
  %223 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %224 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %223, i32 0, i32 136
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %229 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %228, i32 0, i32 135
  %230 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %231 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %230, i32 0, i32 0
  store i32* %229, i32** %231, align 8
  store i32 4, i32* %4, align 4
  br label %1134

232:                                              ; preds = %222
  br label %1133

233:                                              ; preds = %3
  %234 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %235 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %234, i32 0, i32 134
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %240 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %239, i32 0, i32 133
  %241 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %242 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %241, i32 0, i32 0
  store i32* %240, i32** %242, align 8
  store i32 4, i32* %4, align 4
  br label %1134

243:                                              ; preds = %233
  br label %1133

244:                                              ; preds = %3
  %245 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %246 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %245, i32 0, i32 132
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %251 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %250, i32 0, i32 131
  %252 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %253 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %252, i32 0, i32 0
  store i32* %251, i32** %253, align 8
  store i32 4, i32* %4, align 4
  br label %1134

254:                                              ; preds = %244
  br label %1133

255:                                              ; preds = %3
  %256 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %257 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %256, i32 0, i32 130
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %255
  %261 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %262 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %261, i32 0, i32 129
  %263 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %264 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %263, i32 0, i32 0
  store i32* %262, i32** %264, align 8
  store i32 4, i32* %4, align 4
  br label %1134

265:                                              ; preds = %255
  br label %1133

266:                                              ; preds = %3
  %267 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %268 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %267, i32 0, i32 128
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %273 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %272, i32 0, i32 127
  %274 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %275 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %274, i32 0, i32 0
  store i32* %273, i32** %275, align 8
  store i32 4, i32* %4, align 4
  br label %1134

276:                                              ; preds = %266
  br label %1133

277:                                              ; preds = %3
  %278 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %279 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %278, i32 0, i32 126
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %284 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %283, i32 0, i32 125
  %285 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %286 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %285, i32 0, i32 0
  store i32* %284, i32** %286, align 8
  store i32 4, i32* %4, align 4
  br label %1134

287:                                              ; preds = %277
  br label %1133

288:                                              ; preds = %3
  %289 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %290 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %289, i32 0, i32 124
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %288
  %294 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %295 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %294, i32 0, i32 123
  %296 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %297 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %296, i32 0, i32 0
  store i32* %295, i32** %297, align 8
  store i32 4, i32* %4, align 4
  br label %1134

298:                                              ; preds = %288
  br label %1133

299:                                              ; preds = %3
  %300 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %301 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %300, i32 0, i32 122
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %299
  %305 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %306 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %305, i32 0, i32 121
  %307 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %308 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %307, i32 0, i32 0
  store i32* %306, i32** %308, align 8
  store i32 4, i32* %4, align 4
  br label %1134

309:                                              ; preds = %299
  br label %1133

310:                                              ; preds = %3
  %311 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %312 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %311, i32 0, i32 120
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %310
  %316 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %317 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %316, i32 0, i32 119
  %318 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %319 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %318, i32 0, i32 0
  store i32* %317, i32** %319, align 8
  store i32 4, i32* %4, align 4
  br label %1134

320:                                              ; preds = %310
  br label %1133

321:                                              ; preds = %3
  %322 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %323 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %322, i32 0, i32 118
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %321
  %327 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %328 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %327, i32 0, i32 117
  %329 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %330 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %329, i32 0, i32 0
  store i32* %328, i32** %330, align 8
  store i32 4, i32* %4, align 4
  br label %1134

331:                                              ; preds = %321
  br label %1133

332:                                              ; preds = %3
  %333 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %334 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %333, i32 0, i32 116
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %332
  %338 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %339 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %338, i32 0, i32 115
  %340 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %341 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %340, i32 0, i32 0
  store i32* %339, i32** %341, align 8
  store i32 4, i32* %4, align 4
  br label %1134

342:                                              ; preds = %332
  br label %1133

343:                                              ; preds = %3, %3, %3, %3, %3
  %344 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %345 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %346, 258
  %348 = sdiv i32 %347, 2
  %349 = sext i32 %348 to i64
  store i64 %349, i64* %9, align 8
  %350 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %351 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %350, i32 0, i32 114
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* %9, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %343
  %358 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %359 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %358, i32 0, i32 113
  %360 = load i32*, i32** %359, align 8
  %361 = load i64, i64* %9, align 8
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  %363 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %364 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %363, i32 0, i32 0
  store i32* %362, i32** %364, align 8
  store i32 4, i32* %4, align 4
  br label %1134

365:                                              ; preds = %343
  br label %1133

366:                                              ; preds = %3, %3, %3, %3, %3
  %367 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %368 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = sub nsw i32 %369, 257
  %371 = sdiv i32 %370, 2
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %9, align 8
  %373 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %374 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %373, i32 0, i32 112
  %375 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %374, align 8
  %376 = load i64, i64* %9, align 8
  %377 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %375, i64 %376
  %378 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %379 = call i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time* %377, %struct.qed_tlv_parsed_buf* %378)
  store i32 %379, i32* %4, align 4
  br label %1134

380:                                              ; preds = %3
  %381 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %382 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %381, i32 0, i32 111
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %380
  %386 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %387 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %386, i32 0, i32 110
  %388 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %389 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %388, i32 0, i32 0
  store i32* %387, i32** %389, align 8
  store i32 4, i32* %4, align 4
  br label %1134

390:                                              ; preds = %380
  br label %1133

391:                                              ; preds = %3
  %392 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %393 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %392, i32 0, i32 109
  %394 = load i32, i32* %393, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %391
  %397 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %398 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %397, i32 0, i32 108
  %399 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %400 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %399, i32 0, i32 0
  store i32* %398, i32** %400, align 8
  store i32 4, i32* %4, align 4
  br label %1134

401:                                              ; preds = %391
  br label %1133

402:                                              ; preds = %3
  %403 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %404 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %403, i32 0, i32 107
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %412

407:                                              ; preds = %402
  %408 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %409 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %408, i32 0, i32 106
  %410 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %411 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %410, i32 0, i32 0
  store i32* %409, i32** %411, align 8
  store i32 4, i32* %4, align 4
  br label %1134

412:                                              ; preds = %402
  br label %1133

413:                                              ; preds = %3
  %414 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %415 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %414, i32 0, i32 105
  %416 = load i32, i32* %415, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %423

418:                                              ; preds = %413
  %419 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %420 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %419, i32 0, i32 104
  %421 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %422 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %421, i32 0, i32 0
  store i32* %420, i32** %422, align 8
  store i32 4, i32* %4, align 4
  br label %1134

423:                                              ; preds = %413
  br label %1133

424:                                              ; preds = %3
  %425 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %426 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %425, i32 0, i32 103
  %427 = load i32, i32* %426, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %434

429:                                              ; preds = %424
  %430 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %431 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %430, i32 0, i32 102
  %432 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %433 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %432, i32 0, i32 0
  store i32* %431, i32** %433, align 8
  store i32 4, i32* %4, align 4
  br label %1134

434:                                              ; preds = %424
  br label %1133

435:                                              ; preds = %3, %3, %3, %3
  %436 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %437 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = sub nsw i32 %438, 225
  %440 = sext i32 %439 to i64
  store i64 %440, i64* %9, align 8
  %441 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %442 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %441, i32 0, i32 101
  %443 = load i32*, i32** %442, align 8
  %444 = load i64, i64* %9, align 8
  %445 = getelementptr inbounds i32, i32* %443, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %456

448:                                              ; preds = %435
  %449 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %450 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %449, i32 0, i32 100
  %451 = load i32*, i32** %450, align 8
  %452 = load i64, i64* %9, align 8
  %453 = getelementptr inbounds i32, i32* %451, i64 %452
  %454 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %455 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %454, i32 0, i32 0
  store i32* %453, i32** %455, align 8
  store i32 4, i32* %4, align 4
  br label %1134

456:                                              ; preds = %435
  br label %1133

457:                                              ; preds = %3
  %458 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %459 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %458, i32 0, i32 99
  %460 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %461 = call i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time* %459, %struct.qed_tlv_parsed_buf* %460)
  store i32 %461, i32* %4, align 4
  br label %1134

462:                                              ; preds = %3, %3, %3, %3
  %463 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %464 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = sub nsw i32 %465, 230
  %467 = sext i32 %466 to i64
  store i64 %467, i64* %9, align 8
  %468 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %469 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %468, i32 0, i32 98
  %470 = load i32*, i32** %469, align 8
  %471 = load i64, i64* %9, align 8
  %472 = getelementptr inbounds i32, i32* %470, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %483

475:                                              ; preds = %462
  %476 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %477 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %476, i32 0, i32 97
  %478 = load i32*, i32** %477, align 8
  %479 = load i64, i64* %9, align 8
  %480 = getelementptr inbounds i32, i32* %478, i64 %479
  %481 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %482 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %481, i32 0, i32 0
  store i32* %480, i32** %482, align 8
  store i32 4, i32* %4, align 4
  br label %1134

483:                                              ; preds = %462
  br label %1133

484:                                              ; preds = %3
  %485 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %486 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %485, i32 0, i32 96
  %487 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %488 = call i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time* %486, %struct.qed_tlv_parsed_buf* %487)
  store i32 %488, i32* %4, align 4
  br label %1134

489:                                              ; preds = %3
  %490 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %491 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %490, i32 0, i32 95
  %492 = load i32, i32* %491, align 8
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %499

494:                                              ; preds = %489
  %495 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %496 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %495, i32 0, i32 94
  %497 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %498 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %497, i32 0, i32 0
  store i32* %496, i32** %498, align 8
  store i32 4, i32* %4, align 4
  br label %1134

499:                                              ; preds = %489
  br label %1133

500:                                              ; preds = %3
  %501 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %502 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %501, i32 0, i32 93
  %503 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %504 = call i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time* %502, %struct.qed_tlv_parsed_buf* %503)
  store i32 %504, i32* %4, align 4
  br label %1134

505:                                              ; preds = %3
  %506 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %507 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %506, i32 0, i32 92
  %508 = load i32, i32* %507, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %505
  %511 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %512 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %511, i32 0, i32 91
  %513 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %514 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %513, i32 0, i32 0
  store i32* %512, i32** %514, align 8
  store i32 4, i32* %4, align 4
  br label %1134

515:                                              ; preds = %505
  br label %1133

516:                                              ; preds = %3
  %517 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %518 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %517, i32 0, i32 90
  %519 = load i32, i32* %518, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %526

521:                                              ; preds = %516
  %522 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %523 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %522, i32 0, i32 89
  %524 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %525 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %524, i32 0, i32 0
  store i32* %523, i32** %525, align 8
  store i32 4, i32* %4, align 4
  br label %1134

526:                                              ; preds = %516
  br label %1133

527:                                              ; preds = %3
  %528 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %529 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %528, i32 0, i32 88
  %530 = load i32, i32* %529, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %537

532:                                              ; preds = %527
  %533 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %534 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %533, i32 0, i32 87
  %535 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %536 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %535, i32 0, i32 0
  store i32* %534, i32** %536, align 8
  store i32 4, i32* %4, align 4
  br label %1134

537:                                              ; preds = %527
  br label %1133

538:                                              ; preds = %3
  %539 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %540 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %539, i32 0, i32 86
  %541 = load i32, i32* %540, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %548

543:                                              ; preds = %538
  %544 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %545 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %544, i32 0, i32 85
  %546 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %547 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %546, i32 0, i32 0
  store i32* %545, i32** %547, align 8
  store i32 4, i32* %4, align 4
  br label %1134

548:                                              ; preds = %538
  br label %1133

549:                                              ; preds = %3
  %550 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %551 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %550, i32 0, i32 84
  %552 = load i32, i32* %551, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %559

554:                                              ; preds = %549
  %555 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %556 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %555, i32 0, i32 83
  %557 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %558 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %557, i32 0, i32 0
  store i32* %556, i32** %558, align 8
  store i32 4, i32* %4, align 4
  br label %1134

559:                                              ; preds = %549
  br label %1133

560:                                              ; preds = %3
  %561 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %562 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %561, i32 0, i32 82
  %563 = load i32, i32* %562, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %570

565:                                              ; preds = %560
  %566 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %567 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %566, i32 0, i32 81
  %568 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %569 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %568, i32 0, i32 0
  store i32* %567, i32** %569, align 8
  store i32 4, i32* %4, align 4
  br label %1134

570:                                              ; preds = %560
  br label %1133

571:                                              ; preds = %3, %3, %3, %3, %3
  %572 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %573 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = sub nsw i32 %574, 185
  %576 = sdiv i32 %575, 2
  %577 = sext i32 %576 to i64
  store i64 %577, i64* %9, align 8
  %578 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %579 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %578, i32 0, i32 80
  %580 = load i32*, i32** %579, align 8
  %581 = load i64, i64* %9, align 8
  %582 = getelementptr inbounds i32, i32* %580, i64 %581
  %583 = load i32, i32* %582, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %593

585:                                              ; preds = %571
  %586 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %587 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %586, i32 0, i32 79
  %588 = load i32*, i32** %587, align 8
  %589 = load i64, i64* %9, align 8
  %590 = getelementptr inbounds i32, i32* %588, i64 %589
  %591 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %592 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %591, i32 0, i32 0
  store i32* %590, i32** %592, align 8
  store i32 4, i32* %4, align 4
  br label %1134

593:                                              ; preds = %571
  br label %1133

594:                                              ; preds = %3, %3, %3, %3, %3
  %595 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %596 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 4
  %598 = sub nsw i32 %597, 184
  %599 = sdiv i32 %598, 2
  %600 = sext i32 %599 to i64
  store i64 %600, i64* %9, align 8
  %601 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %602 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %601, i32 0, i32 78
  %603 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %602, align 8
  %604 = load i64, i64* %9, align 8
  %605 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %603, i64 %604
  %606 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %607 = call i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time* %605, %struct.qed_tlv_parsed_buf* %606)
  store i32 %607, i32* %4, align 4
  br label %1134

608:                                              ; preds = %3, %3, %3, %3, %3
  %609 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %610 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = sub nsw i32 %611, 187
  %613 = sdiv i32 %612, 2
  %614 = sext i32 %613 to i64
  store i64 %614, i64* %9, align 8
  %615 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %616 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %615, i32 0, i32 77
  %617 = load i32*, i32** %616, align 8
  %618 = load i64, i64* %9, align 8
  %619 = getelementptr inbounds i32, i32* %617, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %630

622:                                              ; preds = %608
  %623 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %624 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %623, i32 0, i32 76
  %625 = load i32*, i32** %624, align 8
  %626 = load i64, i64* %9, align 8
  %627 = getelementptr inbounds i32, i32* %625, i64 %626
  %628 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %629 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %628, i32 0, i32 0
  store i32* %627, i32** %629, align 8
  store i32 4, i32* %4, align 4
  br label %1134

630:                                              ; preds = %608
  br label %1133

631:                                              ; preds = %3, %3, %3, %3, %3
  %632 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %633 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 4
  %635 = sub nsw i32 %634, 186
  %636 = sdiv i32 %635, 2
  %637 = sext i32 %636 to i64
  store i64 %637, i64* %9, align 8
  %638 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %639 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %638, i32 0, i32 75
  %640 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %639, align 8
  %641 = load i64, i64* %9, align 8
  %642 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %640, i64 %641
  store %struct.qed_mfw_tlv_time* %642, %struct.qed_mfw_tlv_time** %8, align 8
  %643 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %8, align 8
  %644 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %645 = call i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time* %643, %struct.qed_tlv_parsed_buf* %644)
  store i32 %645, i32* %4, align 4
  br label %1134

646:                                              ; preds = %3
  %647 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %648 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %647, i32 0, i32 74
  %649 = load i32, i32* %648, align 4
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %656

651:                                              ; preds = %646
  %652 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %653 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %652, i32 0, i32 73
  %654 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %655 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %654, i32 0, i32 0
  store i32* %653, i32** %655, align 8
  store i32 4, i32* %4, align 4
  br label %1134

656:                                              ; preds = %646
  br label %1133

657:                                              ; preds = %3
  %658 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %659 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %658, i32 0, i32 72
  %660 = load i32, i32* %659, align 4
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %662, label %667

662:                                              ; preds = %657
  %663 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %664 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %663, i32 0, i32 71
  %665 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %666 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %665, i32 0, i32 0
  store i32* %664, i32** %666, align 8
  store i32 4, i32* %4, align 4
  br label %1134

667:                                              ; preds = %657
  br label %1133

668:                                              ; preds = %3
  %669 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %670 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %669, i32 0, i32 70
  %671 = load i32, i32* %670, align 4
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %678

673:                                              ; preds = %668
  %674 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %675 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %674, i32 0, i32 69
  %676 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %677 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %676, i32 0, i32 0
  store i32* %675, i32** %677, align 8
  store i32 4, i32* %4, align 4
  br label %1134

678:                                              ; preds = %668
  br label %1133

679:                                              ; preds = %3, %3, %3, %3, %3
  %680 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %681 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 4
  %683 = sub nsw i32 %682, 209
  %684 = sdiv i32 %683, 2
  %685 = sext i32 %684 to i64
  store i64 %685, i64* %9, align 8
  %686 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %687 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %686, i32 0, i32 68
  %688 = load i32*, i32** %687, align 8
  %689 = load i64, i64* %9, align 8
  %690 = getelementptr inbounds i32, i32* %688, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %701

693:                                              ; preds = %679
  %694 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %695 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %694, i32 0, i32 67
  %696 = load i32*, i32** %695, align 8
  %697 = load i64, i64* %9, align 8
  %698 = getelementptr inbounds i32, i32* %696, i64 %697
  %699 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %700 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %699, i32 0, i32 0
  store i32* %698, i32** %700, align 8
  store i32 4, i32* %4, align 4
  br label %1134

701:                                              ; preds = %679
  br label %1133

702:                                              ; preds = %3, %3, %3, %3, %3
  %703 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %704 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %703, i32 0, i32 0
  %705 = load i32, i32* %704, align 4
  %706 = sub nsw i32 %705, 208
  %707 = sdiv i32 %706, 2
  %708 = sext i32 %707 to i64
  store i64 %708, i64* %9, align 8
  %709 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %710 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %709, i32 0, i32 66
  %711 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %710, align 8
  %712 = load i64, i64* %9, align 8
  %713 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %711, i64 %712
  %714 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %715 = call i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time* %713, %struct.qed_tlv_parsed_buf* %714)
  store i32 %715, i32* %4, align 4
  br label %1134

716:                                              ; preds = %3
  %717 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %718 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %717, i32 0, i32 65
  %719 = load i32, i32* %718, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %726

721:                                              ; preds = %716
  %722 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %723 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %722, i32 0, i32 64
  %724 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %725 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %724, i32 0, i32 0
  store i32* %723, i32** %725, align 8
  store i32 4, i32* %4, align 4
  br label %1134

726:                                              ; preds = %716
  br label %1133

727:                                              ; preds = %3
  %728 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %729 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %728, i32 0, i32 63
  %730 = load i32, i32* %729, align 4
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %737

732:                                              ; preds = %727
  %733 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %734 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %733, i32 0, i32 62
  %735 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %736 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %735, i32 0, i32 0
  store i32* %734, i32** %736, align 8
  store i32 4, i32* %4, align 4
  br label %1134

737:                                              ; preds = %727
  br label %1133

738:                                              ; preds = %3
  %739 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %740 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %739, i32 0, i32 61
  %741 = load i32, i32* %740, align 4
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %743, label %748

743:                                              ; preds = %738
  %744 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %745 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %744, i32 0, i32 60
  %746 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %747 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %746, i32 0, i32 0
  store i32* %745, i32** %747, align 8
  store i32 4, i32* %4, align 4
  br label %1134

748:                                              ; preds = %738
  br label %1133

749:                                              ; preds = %3
  %750 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %751 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %750, i32 0, i32 59
  %752 = load i32, i32* %751, align 4
  %753 = icmp ne i32 %752, 0
  br i1 %753, label %754, label %759

754:                                              ; preds = %749
  %755 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %756 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %755, i32 0, i32 58
  %757 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %758 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %757, i32 0, i32 0
  store i32* %756, i32** %758, align 8
  store i32 4, i32* %4, align 4
  br label %1134

759:                                              ; preds = %749
  br label %1133

760:                                              ; preds = %3
  %761 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %762 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %761, i32 0, i32 57
  %763 = load i32, i32* %762, align 4
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %770

765:                                              ; preds = %760
  %766 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %767 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %766, i32 0, i32 56
  %768 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %769 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %768, i32 0, i32 0
  store i32* %767, i32** %769, align 8
  store i32 4, i32* %4, align 4
  br label %1134

770:                                              ; preds = %760
  br label %1133

771:                                              ; preds = %3
  %772 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %773 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %772, i32 0, i32 55
  %774 = load i32, i32* %773, align 4
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %781

776:                                              ; preds = %771
  %777 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %778 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %777, i32 0, i32 54
  %779 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %780 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %779, i32 0, i32 0
  store i32* %778, i32** %780, align 8
  store i32 4, i32* %4, align 4
  br label %1134

781:                                              ; preds = %771
  br label %1133

782:                                              ; preds = %3
  %783 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %784 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %783, i32 0, i32 53
  %785 = load i32, i32* %784, align 4
  %786 = icmp ne i32 %785, 0
  br i1 %786, label %787, label %792

787:                                              ; preds = %782
  %788 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %789 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %788, i32 0, i32 52
  %790 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %791 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %790, i32 0, i32 0
  store i32* %789, i32** %791, align 8
  store i32 4, i32* %4, align 4
  br label %1134

792:                                              ; preds = %782
  br label %1133

793:                                              ; preds = %3, %3, %3, %3, %3
  %794 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %795 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %794, i32 0, i32 0
  %796 = load i32, i32* %795, align 4
  %797 = sub nsw i32 %796, 275
  %798 = sdiv i32 %797, 2
  %799 = sext i32 %798 to i64
  store i64 %799, i64* %9, align 8
  %800 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %801 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %800, i32 0, i32 51
  %802 = load i32*, i32** %801, align 8
  %803 = load i64, i64* %9, align 8
  %804 = getelementptr inbounds i32, i32* %802, i64 %803
  %805 = load i32, i32* %804, align 4
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %807, label %815

807:                                              ; preds = %793
  %808 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %809 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %808, i32 0, i32 50
  %810 = load i32*, i32** %809, align 8
  %811 = load i64, i64* %9, align 8
  %812 = getelementptr inbounds i32, i32* %810, i64 %811
  %813 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %814 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %813, i32 0, i32 0
  store i32* %812, i32** %814, align 8
  store i32 4, i32* %4, align 4
  br label %1134

815:                                              ; preds = %793
  br label %1133

816:                                              ; preds = %3, %3, %3, %3, %3
  %817 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %818 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %817, i32 0, i32 0
  %819 = load i32, i32* %818, align 4
  %820 = sub nsw i32 %819, 274
  %821 = sdiv i32 %820, 2
  %822 = sext i32 %821 to i64
  store i64 %822, i64* %9, align 8
  %823 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %824 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %823, i32 0, i32 49
  %825 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %824, align 8
  %826 = load i64, i64* %9, align 8
  %827 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %825, i64 %826
  %828 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %829 = call i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time* %827, %struct.qed_tlv_parsed_buf* %828)
  store i32 %829, i32* %4, align 4
  br label %1134

830:                                              ; preds = %3
  %831 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %832 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %831, i32 0, i32 48
  %833 = load i32, i32* %832, align 4
  %834 = icmp ne i32 %833, 0
  br i1 %834, label %835, label %840

835:                                              ; preds = %830
  %836 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %837 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %836, i32 0, i32 47
  %838 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %839 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %838, i32 0, i32 0
  store i32* %837, i32** %839, align 8
  store i32 4, i32* %4, align 4
  br label %1134

840:                                              ; preds = %830
  br label %1133

841:                                              ; preds = %3, %3, %3, %3
  %842 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %843 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %842, i32 0, i32 0
  %844 = load i32, i32* %843, align 4
  %845 = sub nsw i32 %844, 218
  %846 = sext i32 %845 to i64
  store i64 %846, i64* %9, align 8
  %847 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %848 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %847, i32 0, i32 46
  %849 = load i32*, i32** %848, align 8
  %850 = load i64, i64* %9, align 8
  %851 = getelementptr inbounds i32, i32* %849, i64 %850
  %852 = load i32, i32* %851, align 4
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %854, label %862

854:                                              ; preds = %841
  %855 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %856 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %855, i32 0, i32 45
  %857 = load i32*, i32** %856, align 8
  %858 = load i64, i64* %9, align 8
  %859 = getelementptr inbounds i32, i32* %857, i64 %858
  %860 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %861 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %860, i32 0, i32 0
  store i32* %859, i32** %861, align 8
  store i32 4, i32* %4, align 4
  br label %1134

862:                                              ; preds = %841
  br label %1133

863:                                              ; preds = %3
  %864 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %865 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %864, i32 0, i32 44
  %866 = load i32, i32* %865, align 4
  %867 = icmp ne i32 %866, 0
  br i1 %867, label %868, label %873

868:                                              ; preds = %863
  %869 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %870 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %869, i32 0, i32 43
  %871 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %872 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %871, i32 0, i32 0
  store i32* %870, i32** %872, align 8
  store i32 4, i32* %4, align 4
  br label %1134

873:                                              ; preds = %863
  br label %1133

874:                                              ; preds = %3
  %875 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %876 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %875, i32 0, i32 42
  %877 = load i32, i32* %876, align 4
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %879, label %884

879:                                              ; preds = %874
  %880 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %881 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %880, i32 0, i32 41
  %882 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %883 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %882, i32 0, i32 0
  store i32* %881, i32** %883, align 8
  store i32 4, i32* %4, align 4
  br label %1134

884:                                              ; preds = %874
  br label %1133

885:                                              ; preds = %3
  %886 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %887 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %886, i32 0, i32 40
  %888 = load i32, i32* %887, align 4
  %889 = icmp ne i32 %888, 0
  br i1 %889, label %890, label %895

890:                                              ; preds = %885
  %891 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %892 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %891, i32 0, i32 39
  %893 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %894 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %893, i32 0, i32 0
  store i32* %892, i32** %894, align 8
  store i32 4, i32* %4, align 4
  br label %1134

895:                                              ; preds = %885
  br label %1133

896:                                              ; preds = %3
  %897 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %898 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %897, i32 0, i32 38
  %899 = load i32, i32* %898, align 4
  %900 = icmp ne i32 %899, 0
  br i1 %900, label %901, label %906

901:                                              ; preds = %896
  %902 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %903 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %902, i32 0, i32 37
  %904 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %905 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %904, i32 0, i32 0
  store i32* %903, i32** %905, align 8
  store i32 4, i32* %4, align 4
  br label %1134

906:                                              ; preds = %896
  br label %1133

907:                                              ; preds = %3
  %908 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %909 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %908, i32 0, i32 36
  %910 = load i32, i32* %909, align 4
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %912, label %917

912:                                              ; preds = %907
  %913 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %914 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %913, i32 0, i32 35
  %915 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %916 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %915, i32 0, i32 0
  store i32* %914, i32** %916, align 8
  store i32 4, i32* %4, align 4
  br label %1134

917:                                              ; preds = %907
  br label %1133

918:                                              ; preds = %3
  %919 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %920 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %919, i32 0, i32 34
  %921 = load i32, i32* %920, align 4
  %922 = icmp ne i32 %921, 0
  br i1 %922, label %923, label %928

923:                                              ; preds = %918
  %924 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %925 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %924, i32 0, i32 33
  %926 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %927 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %926, i32 0, i32 0
  store i32* %925, i32** %927, align 8
  store i32 4, i32* %4, align 4
  br label %1134

928:                                              ; preds = %918
  br label %1133

929:                                              ; preds = %3
  %930 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %931 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %930, i32 0, i32 32
  %932 = load i32, i32* %931, align 4
  %933 = icmp ne i32 %932, 0
  br i1 %933, label %934, label %939

934:                                              ; preds = %929
  %935 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %936 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %935, i32 0, i32 31
  %937 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %938 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %937, i32 0, i32 0
  store i32* %936, i32** %938, align 8
  store i32 4, i32* %4, align 4
  br label %1134

939:                                              ; preds = %929
  br label %1133

940:                                              ; preds = %3
  %941 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %942 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %941, i32 0, i32 30
  %943 = load i32, i32* %942, align 4
  %944 = icmp ne i32 %943, 0
  br i1 %944, label %945, label %950

945:                                              ; preds = %940
  %946 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %947 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %946, i32 0, i32 29
  %948 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %949 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %948, i32 0, i32 0
  store i32* %947, i32** %949, align 8
  store i32 4, i32* %4, align 4
  br label %1134

950:                                              ; preds = %940
  br label %1133

951:                                              ; preds = %3
  %952 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %953 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %952, i32 0, i32 28
  %954 = load i32, i32* %953, align 4
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %956, label %961

956:                                              ; preds = %951
  %957 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %958 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %957, i32 0, i32 27
  %959 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %960 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %959, i32 0, i32 0
  store i32* %958, i32** %960, align 8
  store i32 4, i32* %4, align 4
  br label %1134

961:                                              ; preds = %951
  br label %1133

962:                                              ; preds = %3
  %963 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %964 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %963, i32 0, i32 26
  %965 = load i32, i32* %964, align 4
  %966 = icmp ne i32 %965, 0
  br i1 %966, label %967, label %972

967:                                              ; preds = %962
  %968 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %969 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %968, i32 0, i32 25
  %970 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %971 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %970, i32 0, i32 0
  store i32* %969, i32** %971, align 8
  store i32 4, i32* %4, align 4
  br label %1134

972:                                              ; preds = %962
  br label %1133

973:                                              ; preds = %3
  %974 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %975 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %974, i32 0, i32 24
  %976 = load i32, i32* %975, align 4
  %977 = icmp ne i32 %976, 0
  br i1 %977, label %978, label %983

978:                                              ; preds = %973
  %979 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %980 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %979, i32 0, i32 23
  %981 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %982 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %981, i32 0, i32 0
  store i32* %980, i32** %982, align 8
  store i32 4, i32* %4, align 4
  br label %1134

983:                                              ; preds = %973
  br label %1133

984:                                              ; preds = %3
  %985 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %986 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %985, i32 0, i32 22
  %987 = load i32, i32* %986, align 4
  %988 = icmp ne i32 %987, 0
  br i1 %988, label %989, label %994

989:                                              ; preds = %984
  %990 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %991 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %990, i32 0, i32 21
  %992 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %993 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %992, i32 0, i32 0
  store i32* %991, i32** %993, align 8
  store i32 4, i32* %4, align 4
  br label %1134

994:                                              ; preds = %984
  br label %1133

995:                                              ; preds = %3
  %996 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %997 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %996, i32 0, i32 20
  %998 = load i32, i32* %997, align 4
  %999 = icmp ne i32 %998, 0
  br i1 %999, label %1000, label %1005

1000:                                             ; preds = %995
  %1001 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1002 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1001, i32 0, i32 19
  %1003 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1004 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %1003, i32 0, i32 0
  store i32* %1002, i32** %1004, align 8
  store i32 4, i32* %4, align 4
  br label %1134

1005:                                             ; preds = %995
  br label %1133

1006:                                             ; preds = %3
  %1007 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1008 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1007, i32 0, i32 18
  %1009 = load i32, i32* %1008, align 4
  %1010 = icmp ne i32 %1009, 0
  br i1 %1010, label %1011, label %1016

1011:                                             ; preds = %1006
  %1012 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1013 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1012, i32 0, i32 17
  %1014 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1015 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %1014, i32 0, i32 0
  store i32* %1013, i32** %1015, align 8
  store i32 4, i32* %4, align 4
  br label %1134

1016:                                             ; preds = %1006
  br label %1133

1017:                                             ; preds = %3
  %1018 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1019 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1018, i32 0, i32 16
  %1020 = load i32, i32* %1019, align 4
  %1021 = icmp ne i32 %1020, 0
  br i1 %1021, label %1022, label %1027

1022:                                             ; preds = %1017
  %1023 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1024 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1023, i32 0, i32 15
  %1025 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1026 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %1025, i32 0, i32 0
  store i32* %1024, i32** %1026, align 8
  store i32 4, i32* %4, align 4
  br label %1134

1027:                                             ; preds = %1017
  br label %1133

1028:                                             ; preds = %3
  %1029 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1030 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1029, i32 0, i32 14
  %1031 = load i32, i32* %1030, align 4
  %1032 = icmp ne i32 %1031, 0
  br i1 %1032, label %1033, label %1038

1033:                                             ; preds = %1028
  %1034 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1035 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1034, i32 0, i32 13
  %1036 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1037 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %1036, i32 0, i32 0
  store i32* %1035, i32** %1037, align 8
  store i32 4, i32* %4, align 4
  br label %1134

1038:                                             ; preds = %1028
  br label %1133

1039:                                             ; preds = %3
  %1040 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1041 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1040, i32 0, i32 12
  %1042 = load i32, i32* %1041, align 4
  %1043 = icmp ne i32 %1042, 0
  br i1 %1043, label %1044, label %1049

1044:                                             ; preds = %1039
  %1045 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1046 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1045, i32 0, i32 11
  %1047 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1048 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %1047, i32 0, i32 0
  store i32* %1046, i32** %1048, align 8
  store i32 4, i32* %4, align 4
  br label %1134

1049:                                             ; preds = %1039
  br label %1133

1050:                                             ; preds = %3
  %1051 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1052 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1051, i32 0, i32 10
  %1053 = load i32, i32* %1052, align 4
  %1054 = icmp ne i32 %1053, 0
  br i1 %1054, label %1055, label %1060

1055:                                             ; preds = %1050
  %1056 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1057 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1056, i32 0, i32 9
  %1058 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1059 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %1058, i32 0, i32 0
  store i32* %1057, i32** %1059, align 8
  store i32 4, i32* %4, align 4
  br label %1134

1060:                                             ; preds = %1050
  br label %1133

1061:                                             ; preds = %3
  %1062 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1063 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1062, i32 0, i32 8
  %1064 = load i32, i32* %1063, align 4
  %1065 = icmp ne i32 %1064, 0
  br i1 %1065, label %1066, label %1071

1066:                                             ; preds = %1061
  %1067 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1068 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1067, i32 0, i32 7
  %1069 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1070 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %1069, i32 0, i32 0
  store i32* %1068, i32** %1070, align 8
  store i32 4, i32* %4, align 4
  br label %1134

1071:                                             ; preds = %1061
  br label %1133

1072:                                             ; preds = %3
  %1073 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1074 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1073, i32 0, i32 6
  %1075 = load i32, i32* %1074, align 4
  %1076 = icmp ne i32 %1075, 0
  br i1 %1076, label %1077, label %1082

1077:                                             ; preds = %1072
  %1078 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1079 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1078, i32 0, i32 5
  %1080 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1081 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %1080, i32 0, i32 0
  store i32* %1079, i32** %1081, align 8
  store i32 4, i32* %4, align 4
  br label %1134

1082:                                             ; preds = %1072
  br label %1133

1083:                                             ; preds = %3
  %1084 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1085 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1084, i32 0, i32 4
  %1086 = load i32, i32* %1085, align 4
  %1087 = icmp ne i32 %1086, 0
  br i1 %1087, label %1088, label %1093

1088:                                             ; preds = %1083
  %1089 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1090 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1089, i32 0, i32 3
  %1091 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1092 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %1091, i32 0, i32 0
  store i32* %1090, i32** %1092, align 8
  store i32 4, i32* %4, align 4
  br label %1134

1093:                                             ; preds = %1083
  br label %1133

1094:                                             ; preds = %3, %3, %3, %3, %3
  %1095 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %1096 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %1095, i32 0, i32 0
  %1097 = load i32, i32* %1096, align 4
  %1098 = sub nsw i32 %1097, 150
  %1099 = sdiv i32 %1098, 2
  %1100 = sext i32 %1099 to i64
  store i64 %1100, i64* %9, align 8
  %1101 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1102 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1101, i32 0, i32 2
  %1103 = load i32*, i32** %1102, align 8
  %1104 = load i64, i64* %9, align 8
  %1105 = getelementptr inbounds i32, i32* %1103, i64 %1104
  %1106 = load i32, i32* %1105, align 4
  %1107 = icmp ne i32 %1106, 0
  br i1 %1107, label %1108, label %1116

1108:                                             ; preds = %1094
  %1109 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1110 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1109, i32 0, i32 1
  %1111 = load i32*, i32** %1110, align 8
  %1112 = load i64, i64* %9, align 8
  %1113 = getelementptr inbounds i32, i32* %1111, i64 %1112
  %1114 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1115 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %1114, i32 0, i32 0
  store i32* %1113, i32** %1115, align 8
  store i32 4, i32* %4, align 4
  br label %1134

1116:                                             ; preds = %1094
  br label %1133

1117:                                             ; preds = %3, %3, %3, %3, %3
  %1118 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %1119 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %1118, i32 0, i32 0
  %1120 = load i32, i32* %1119, align 4
  %1121 = sub nsw i32 %1120, 155
  %1122 = sdiv i32 %1121, 2
  %1123 = sext i32 %1122 to i64
  store i64 %1123, i64* %9, align 8
  %1124 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %1125 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %1124, i32 0, i32 0
  %1126 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %1125, align 8
  %1127 = load i64, i64* %9, align 8
  %1128 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %1126, i64 %1127
  store %struct.qed_mfw_tlv_time* %1128, %struct.qed_mfw_tlv_time** %8, align 8
  %1129 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %8, align 8
  %1130 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %1131 = call i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time* %1129, %struct.qed_tlv_parsed_buf* %1130)
  store i32 %1131, i32* %4, align 4
  br label %1134

1132:                                             ; preds = %3
  br label %1133

1133:                                             ; preds = %1132, %1116, %1093, %1082, %1071, %1060, %1049, %1038, %1027, %1016, %1005, %994, %983, %972, %961, %950, %939, %928, %917, %906, %895, %884, %873, %862, %840, %815, %792, %781, %770, %759, %748, %737, %726, %701, %678, %667, %656, %630, %593, %570, %559, %548, %537, %526, %515, %499, %483, %456, %434, %423, %412, %401, %390, %365, %342, %331, %320, %309, %298, %287, %276, %265, %254, %243, %232, %221, %210, %199, %188, %177, %166, %155, %144, %133, %122, %111, %100, %89, %78, %67, %56, %45, %34, %23
  store i32 -1, i32* %4, align 4
  br label %1134

1134:                                             ; preds = %1133, %1117, %1108, %1088, %1077, %1066, %1055, %1044, %1033, %1022, %1011, %1000, %989, %978, %967, %956, %945, %934, %923, %912, %901, %890, %879, %868, %854, %835, %816, %807, %787, %776, %765, %754, %743, %732, %721, %702, %693, %673, %662, %651, %631, %622, %594, %585, %565, %554, %543, %532, %521, %510, %500, %494, %484, %475, %457, %448, %429, %418, %407, %396, %385, %366, %357, %337, %326, %315, %304, %293, %282, %271, %260, %249, %238, %227, %216, %205, %194, %183, %172, %161, %150, %139, %128, %117, %106, %95, %84, %73, %62, %51, %40, %29, %18
  %1135 = load i32, i32* %4, align 4
  ret i32 %1135
}

declare dso_local i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time*, %struct.qed_tlv_parsed_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
