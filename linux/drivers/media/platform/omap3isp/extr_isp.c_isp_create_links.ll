; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_create_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_create_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { %struct.TYPE_53__, %struct.TYPE_50__, %struct.TYPE_48__, %struct.TYPE_46__, %struct.TYPE_44__, %struct.TYPE_42__, %struct.TYPE_39__, %struct.TYPE_37__ }
%struct.TYPE_53__ = type { %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_50__ = type { %struct.TYPE_49__, %struct.TYPE_57__ }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_57__ = type { %struct.TYPE_56__ }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_44__ = type { %struct.TYPE_43__, %struct.TYPE_35__, %struct.TYPE_33__ }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_40__, %struct.TYPE_31__, %struct.TYPE_59__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_60__ }
%struct.TYPE_60__ = type { i32 }
%struct.TYPE_59__ = type { %struct.TYPE_58__ }
%struct.TYPE_58__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__, %struct.TYPE_55__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_55__ = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_36__, %struct.TYPE_52__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_52__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32 }

@CSI2_PAD_SOURCE = common dso_local global i32 0, align 4
@CCP2_PAD_SINK = common dso_local global i32 0, align 4
@CCDC_PAD_SOURCE_OF = common dso_local global i32 0, align 4
@PREV_PAD_SINK = common dso_local global i32 0, align 4
@PREV_PAD_SOURCE = common dso_local global i32 0, align 4
@RESZ_PAD_SINK = common dso_local global i32 0, align 4
@RESZ_PAD_SOURCE = common dso_local global i32 0, align 4
@CCDC_PAD_SINK = common dso_local global i32 0, align 4
@CCP2_PAD_SOURCE = common dso_local global i32 0, align 4
@CCDC_PAD_SOURCE_VP = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_IMMUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_device*)* @isp_create_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_create_links(%struct.isp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %3, align 8
  %5 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %6 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %5, i32 0, i32 7
  %7 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %9 = load i32, i32* @CSI2_PAD_SOURCE, align 4
  %10 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %11 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %13, i32 0, i32 0
  %15 = call i32 @media_create_pad_link(i32* %8, i32 %9, i32* %14, i32 0, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %251

20:                                               ; preds = %1
  %21 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %22 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %24, i32 0, i32 0
  %26 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %27 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %28, i32 0, i32 0
  %30 = load i32, i32* @CCP2_PAD_SINK, align 4
  %31 = call i32 @media_create_pad_link(i32* %25, i32 0, i32* %29, i32 %30, i32 0)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %251

36:                                               ; preds = %20
  %37 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %38 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %39, i32 0, i32 0
  %41 = load i32, i32* @CCDC_PAD_SOURCE_OF, align 4
  %42 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %43 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %45, i32 0, i32 0
  %47 = call i32 @media_create_pad_link(i32* %40, i32 %41, i32* %46, i32 0, i32 0)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %251

52:                                               ; preds = %36
  %53 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %54 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %56, i32 0, i32 0
  %58 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %59 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %60, i32 0, i32 0
  %62 = load i32, i32* @PREV_PAD_SINK, align 4
  %63 = call i32 @media_create_pad_link(i32* %57, i32 0, i32* %61, i32 %62, i32 0)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %251

68:                                               ; preds = %52
  %69 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %70 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %71, i32 0, i32 0
  %73 = load i32, i32* @PREV_PAD_SOURCE, align 4
  %74 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %75 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %77, i32 0, i32 0
  %79 = call i32 @media_create_pad_link(i32* %72, i32 %73, i32* %78, i32 0, i32 0)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %251

84:                                               ; preds = %68
  %85 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %86 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 0
  %90 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %91 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %92, i32 0, i32 0
  %94 = load i32, i32* @RESZ_PAD_SINK, align 4
  %95 = call i32 @media_create_pad_link(i32* %89, i32 0, i32* %93, i32 %94, i32 0)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %251

100:                                              ; preds = %84
  %101 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %102 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %103, i32 0, i32 0
  %105 = load i32, i32* @RESZ_PAD_SOURCE, align 4
  %106 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %107 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 0
  %111 = call i32 @media_create_pad_link(i32* %104, i32 %105, i32* %110, i32 0, i32 0)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %100
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %251

116:                                              ; preds = %100
  %117 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %118 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %119, i32 0, i32 0
  %121 = load i32, i32* @CSI2_PAD_SOURCE, align 4
  %122 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %123 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %124, i32 0, i32 0
  %126 = load i32, i32* @CCDC_PAD_SINK, align 4
  %127 = call i32 @media_create_pad_link(i32* %120, i32 %121, i32* %125, i32 %126, i32 0)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %251

132:                                              ; preds = %116
  %133 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %134 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %135, i32 0, i32 0
  %137 = load i32, i32* @CCP2_PAD_SOURCE, align 4
  %138 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %139 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %140, i32 0, i32 0
  %142 = load i32, i32* @CCDC_PAD_SINK, align 4
  %143 = call i32 @media_create_pad_link(i32* %136, i32 %137, i32* %141, i32 %142, i32 0)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %132
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %251

148:                                              ; preds = %132
  %149 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %150 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %151, i32 0, i32 0
  %153 = load i32, i32* @CCDC_PAD_SOURCE_VP, align 4
  %154 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %155 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %156, i32 0, i32 0
  %158 = load i32, i32* @PREV_PAD_SINK, align 4
  %159 = call i32 @media_create_pad_link(i32* %152, i32 %153, i32* %157, i32 %158, i32 0)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %148
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* %2, align 4
  br label %251

164:                                              ; preds = %148
  %165 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %166 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %167, i32 0, i32 0
  %169 = load i32, i32* @CCDC_PAD_SOURCE_OF, align 4
  %170 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %171 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %172, i32 0, i32 0
  %174 = load i32, i32* @RESZ_PAD_SINK, align 4
  %175 = call i32 @media_create_pad_link(i32* %168, i32 %169, i32* %173, i32 %174, i32 0)
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %4, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %164
  %179 = load i32, i32* %4, align 4
  store i32 %179, i32* %2, align 4
  br label %251

180:                                              ; preds = %164
  %181 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %182 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %183, i32 0, i32 0
  %185 = load i32, i32* @PREV_PAD_SOURCE, align 4
  %186 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %187 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %188, i32 0, i32 0
  %190 = load i32, i32* @RESZ_PAD_SINK, align 4
  %191 = call i32 @media_create_pad_link(i32* %184, i32 %185, i32* %189, i32 %190, i32 0)
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %180
  %195 = load i32, i32* %4, align 4
  store i32 %195, i32* %2, align 4
  br label %251

196:                                              ; preds = %180
  %197 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %198 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %199, i32 0, i32 0
  %201 = load i32, i32* @CCDC_PAD_SOURCE_VP, align 4
  %202 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %203 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %204, i32 0, i32 0
  %206 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %207 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @media_create_pad_link(i32* %200, i32 %201, i32* %205, i32 0, i32 %208)
  store i32 %209, i32* %4, align 4
  %210 = load i32, i32* %4, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %196
  %213 = load i32, i32* %4, align 4
  store i32 %213, i32* %2, align 4
  br label %251

214:                                              ; preds = %196
  %215 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %216 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %217, i32 0, i32 0
  %219 = load i32, i32* @CCDC_PAD_SOURCE_VP, align 4
  %220 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %221 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %222, i32 0, i32 0
  %224 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %225 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @media_create_pad_link(i32* %218, i32 %219, i32* %223, i32 0, i32 %226)
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* %4, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %214
  %231 = load i32, i32* %4, align 4
  store i32 %231, i32* %2, align 4
  br label %251

232:                                              ; preds = %214
  %233 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %234 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %235, i32 0, i32 0
  %237 = load i32, i32* @CCDC_PAD_SOURCE_VP, align 4
  %238 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %239 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %240, i32 0, i32 0
  %242 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %243 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %244 = or i32 %242, %243
  %245 = call i32 @media_create_pad_link(i32* %236, i32 %237, i32* %241, i32 0, i32 %244)
  store i32 %245, i32* %4, align 4
  %246 = load i32, i32* %4, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %232
  %249 = load i32, i32* %4, align 4
  store i32 %249, i32* %2, align 4
  br label %251

250:                                              ; preds = %232
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %250, %248, %230, %212, %194, %178, %162, %146, %130, %114, %98, %82, %66, %50, %34, %18
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
