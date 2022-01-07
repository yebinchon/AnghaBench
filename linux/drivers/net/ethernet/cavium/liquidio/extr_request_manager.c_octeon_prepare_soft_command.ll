; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_prepare_soft_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_prepare_soft_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.octeon_soft_command = type { i64, i64, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i8**, i32, i32 }
%struct.TYPE_10__ = type { i32, i8**, i32, i32, i32 }
%struct.octeon_config = type { i32 }
%struct.octeon_instr_ih2 = type { i32, i32, i32, i64, i32, i8*, i8* }
%struct.octeon_instr_ih3 = type { i32, i64, i32 }
%struct.octeon_instr_pki_ih3 = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.octeon_instr_irh = type { i32, i32, i32, i8* }
%struct.octeon_instr_rdp = type { i64, i32 }

@LIO_CONTROL = common dso_local global i8* null, align 8
@ATOMIC_TAG = common dso_local global i8* null, align 8
@LIO_SOFTCMDRESP_IH3 = common dso_local global i32 0, align 4
@LIO_PCICMD_O3 = common dso_local global i32 0, align 4
@LIO_SOFTCMDRESP_IH2 = common dso_local global i32 0, align 4
@LIO_PCICMD_O2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_prepare_soft_command(%struct.octeon_device* %0, %struct.octeon_soft_command* %1, i32 %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca %struct.octeon_soft_command*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.octeon_config*, align 8
  %16 = alloca %struct.octeon_instr_ih2*, align 8
  %17 = alloca %struct.octeon_instr_ih3*, align 8
  %18 = alloca %struct.octeon_instr_pki_ih3*, align 8
  %19 = alloca %struct.octeon_instr_irh*, align 8
  %20 = alloca %struct.octeon_instr_rdp*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %8, align 8
  store %struct.octeon_soft_command* %1, %struct.octeon_soft_command** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 15
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 127
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %30 = call %struct.octeon_config* @octeon_get_conf(%struct.octeon_device* %29)
  store %struct.octeon_config* %30, %struct.octeon_config** %15, align 8
  %31 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %32 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %7
  %35 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %36 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %180

38:                                               ; preds = %34, %7
  %39 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %40 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  %43 = bitcast i32* %42 to %struct.octeon_instr_ih3*
  store %struct.octeon_instr_ih3* %43, %struct.octeon_instr_ih3** %17, align 8
  %44 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %45 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %45, align 8
  %47 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %48 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %46, i64 %49
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %17, align 8
  %57 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %59 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = bitcast i32* %61 to %struct.octeon_instr_pki_ih3*
  store %struct.octeon_instr_pki_ih3* %62, %struct.octeon_instr_pki_ih3** %18, align 8
  %63 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %18, align 8
  %64 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %18, align 8
  %66 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %18, align 8
  %68 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  %69 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %70, align 8
  %72 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %73 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %71, i64 %74
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %18, align 8
  %82 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 8
  %83 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %18, align 8
  %84 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  %85 = load i8*, i8** @LIO_CONTROL, align 8
  %86 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %18, align 8
  %87 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %86, i32 0, i32 8
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @ATOMIC_TAG, align 8
  %89 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %18, align 8
  %90 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  %91 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %92 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %92, align 8
  %94 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %95 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %93, i64 %96
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %18, align 8
  %104 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %18, align 8
  %106 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %105, i32 0, i32 4
  store i32 7, i32* %106, align 8
  %107 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %18, align 8
  %108 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %107, i32 0, i32 5
  store i32 8, i32* %108, align 4
  %109 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %110 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %38
  %114 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %115 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %17, align 8
  %118 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %38
  %120 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %121 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = bitcast i32* %123 to %struct.octeon_instr_irh*
  store %struct.octeon_instr_irh* %124, %struct.octeon_instr_irh** %19, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %19, align 8
  %127 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %19, align 8
  %130 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i8*, i8** %12, align 8
  %132 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %19, align 8
  %133 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %136 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  store i8* %134, i8** %140, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %143 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 1
  store i8* %141, i8** %147, align 8
  %148 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %149 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %119
  %153 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %154 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = bitcast i32* %156 to %struct.octeon_instr_rdp*
  store %struct.octeon_instr_rdp* %157, %struct.octeon_instr_rdp** %20, align 8
  %158 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %159 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.octeon_instr_rdp*, %struct.octeon_instr_rdp** %20, align 8
  %162 = getelementptr inbounds %struct.octeon_instr_rdp, %struct.octeon_instr_rdp* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %164 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.octeon_instr_rdp*, %struct.octeon_instr_rdp** %20, align 8
  %167 = getelementptr inbounds %struct.octeon_instr_rdp, %struct.octeon_instr_rdp* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %19, align 8
  %169 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %168, i32 0, i32 2
  store i32 1, i32* %169, align 8
  %170 = load i32, i32* @LIO_SOFTCMDRESP_IH3, align 4
  %171 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %17, align 8
  %172 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %179

173:                                              ; preds = %119
  %174 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %19, align 8
  %175 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %174, i32 0, i32 2
  store i32 0, i32* %175, align 8
  %176 = load i32, i32* @LIO_PCICMD_O3, align 4
  %177 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %17, align 8
  %178 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %173, %152
  br label %271

180:                                              ; preds = %34
  %181 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %182 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 3
  %185 = bitcast i32* %184 to %struct.octeon_instr_ih2*
  store %struct.octeon_instr_ih2* %185, %struct.octeon_instr_ih2** %16, align 8
  %186 = load i8*, i8** @ATOMIC_TAG, align 8
  %187 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %16, align 8
  %188 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %187, i32 0, i32 6
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** @LIO_CONTROL, align 8
  %190 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %16, align 8
  %191 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %190, i32 0, i32 5
  store i8* %189, i8** %191, align 8
  %192 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %16, align 8
  %193 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = load %struct.octeon_config*, %struct.octeon_config** %15, align 8
  %195 = call i32 @CFG_GET_CTRL_Q_GRP(%struct.octeon_config* %194)
  %196 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %16, align 8
  %197 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 8
  %198 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %199 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %180
  %203 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %204 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %16, align 8
  %207 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %206, i32 0, i32 3
  store i64 %205, i64* %207, align 8
  %208 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %16, align 8
  %209 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %208, i32 0, i32 1
  store i32 1, i32* %209, align 4
  br label %210

210:                                              ; preds = %202, %180
  %211 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %212 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 2
  %215 = bitcast i32* %214 to %struct.octeon_instr_irh*
  store %struct.octeon_instr_irh* %215, %struct.octeon_instr_irh** %19, align 8
  %216 = load i32, i32* %10, align 4
  %217 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %19, align 8
  %218 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %11, align 4
  %220 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %19, align 8
  %221 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load i8*, i8** %12, align 8
  %223 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %19, align 8
  %224 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %223, i32 0, i32 3
  store i8* %222, i8** %224, align 8
  %225 = load i8*, i8** %13, align 8
  %226 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %227 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  %230 = load i8**, i8*** %229, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 0
  store i8* %225, i8** %231, align 8
  %232 = load i8*, i8** %14, align 8
  %233 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %234 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load i8**, i8*** %236, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 1
  store i8* %232, i8** %238, align 8
  %239 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %240 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %264

243:                                              ; preds = %210
  %244 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %245 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = bitcast i32* %247 to %struct.octeon_instr_rdp*
  store %struct.octeon_instr_rdp* %248, %struct.octeon_instr_rdp** %20, align 8
  %249 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %250 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.octeon_instr_rdp*, %struct.octeon_instr_rdp** %20, align 8
  %253 = getelementptr inbounds %struct.octeon_instr_rdp, %struct.octeon_instr_rdp* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 8
  %254 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %255 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.octeon_instr_rdp*, %struct.octeon_instr_rdp** %20, align 8
  %258 = getelementptr inbounds %struct.octeon_instr_rdp, %struct.octeon_instr_rdp* %257, i32 0, i32 0
  store i64 %256, i64* %258, align 8
  %259 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %19, align 8
  %260 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %259, i32 0, i32 2
  store i32 1, i32* %260, align 8
  %261 = load i32, i32* @LIO_SOFTCMDRESP_IH2, align 4
  %262 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %16, align 8
  %263 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 8
  br label %270

264:                                              ; preds = %210
  %265 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %19, align 8
  %266 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %265, i32 0, i32 2
  store i32 0, i32* %266, align 8
  %267 = load i32, i32* @LIO_PCICMD_O2, align 4
  %268 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %16, align 8
  %269 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %268, i32 0, i32 2
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %264, %243
  br label %271

271:                                              ; preds = %270, %179
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.octeon_config* @octeon_get_conf(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32 @CFG_GET_CTRL_Q_GRP(%struct.octeon_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
