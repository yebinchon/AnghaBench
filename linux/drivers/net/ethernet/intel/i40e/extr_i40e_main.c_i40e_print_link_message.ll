; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_print_link_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_print_link_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I40E_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"The partition detected link speed that is less than 10Gbps\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"40 G\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"20 G\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"25 G\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"10 G\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"5 G\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"2.5 G\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"1000 M\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"100 M\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"RX/TX\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@I40E_AQ_AN_COMPLETED = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@I40E_AQ_CONFIG_FEC_KR_ENA = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"CL74 FC-FEC/BASE-R\00", align 1
@I40E_AQ_CONFIG_FEC_RS_ENA = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"CL108 RS-FEC\00", align 1
@I40E_AQ_REQUEST_FEC_KR = common dso_local global i32 0, align 4
@I40E_AQ_REQUEST_FEC_RS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [105 x i8] c"NIC Link is Up, %sbps Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"NIC Link is Up, %sbps Full Duplex, Flow Control: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_print_link_message(%struct.i40e_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 3
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @I40E_LINK_SPEED_UNKNOWN, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %17
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %28 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %195

39:                                               ; preds = %32, %26
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %42 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %45 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @netdev_info(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %195

53:                                               ; preds = %39
  %54 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %55 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %53
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %62 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 133
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %70 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 135
  br i1 %75, label %76, label %81

76:                                               ; preds = %68, %60
  %77 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %78 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @netdev_warn(i32 %79, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %68, %53
  %82 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %83 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %96 [
    i32 129, label %88
    i32 132, label %89
    i32 131, label %90
    i32 134, label %91
    i32 128, label %92
    i32 130, label %93
    i32 133, label %94
    i32 135, label %95
  ]

88:                                               ; preds = %81
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %97

89:                                               ; preds = %81
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %97

90:                                               ; preds = %81
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %97

91:                                               ; preds = %81
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %97

92:                                               ; preds = %81
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %97

93:                                               ; preds = %81
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %97

94:                                               ; preds = %81
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %97

95:                                               ; preds = %81
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %97

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96, %95, %94, %93, %92, %91, %90, %89, %88
  %98 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %99 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %106 [
    i32 138, label %103
    i32 136, label %104
    i32 137, label %105
  ]

103:                                              ; preds = %97
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  br label %107

104:                                              ; preds = %97
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %107

105:                                              ; preds = %97
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %8, align 8
  br label %107

106:                                              ; preds = %97
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  br label %107

107:                                              ; preds = %106, %105, %104, %103
  %108 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %109 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 131
  br i1 %114, label %115, label %188

115:                                              ; preds = %107
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %11, align 8
  %116 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %117 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @I40E_AQ_AN_COMPLETED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %11, align 8
  br label %126

126:                                              ; preds = %125, %115
  %127 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %128 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @I40E_AQ_CONFIG_FEC_KR_ENA, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %149

137:                                              ; preds = %126
  %138 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %139 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @I40E_AQ_CONFIG_FEC_RS_ENA, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8** %9, align 8
  br label %148

148:                                              ; preds = %147, %137
  br label %149

149:                                              ; preds = %148, %136
  %150 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %151 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %150, i32 0, i32 3
  %152 = load %struct.i40e_pf*, %struct.i40e_pf** %151, align 8
  %153 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @I40E_AQ_REQUEST_FEC_KR, align 4
  %159 = load i32, i32* @I40E_AQ_REQUEST_FEC_RS, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %157, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %149
  %164 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %165 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %164, i32 0, i32 3
  %166 = load %struct.i40e_pf*, %struct.i40e_pf** %165, align 8
  %167 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @I40E_AQ_REQUEST_FEC_RS, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %163
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8** %10, align 8
  br label %177

176:                                              ; preds = %163
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8** %10, align 8
  br label %177

177:                                              ; preds = %176, %175
  br label %178

178:                                              ; preds = %177, %149
  %179 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %180 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = call i32 (i32, i8*, ...) @netdev_info(i32 %181, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.20, i64 0, i64 0), i8* %182, i8* %183, i8* %184, i8* %185, i8* %186)
  br label %195

188:                                              ; preds = %107
  %189 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %190 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i8*, i8** %7, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = call i32 (i32, i8*, ...) @netdev_info(i32 %191, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i8* %192, i8* %193)
  br label %195

195:                                              ; preds = %38, %48, %188, %178
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
